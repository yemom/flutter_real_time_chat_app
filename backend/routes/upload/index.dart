import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_auth/dart_frog_auth.dart';

// Real upload endpoint: accepts multipart/form-data with field "photo",
// saves to backend/uploads/, and returns the relative URL.

Handler middleware(Handler handler) {
  return handler.use(
    bearerAuthentication<String>(
      authenticator: (context, token) async => token.isNotEmpty ? token : null,
    ),
  );
}

Future<Response> onRequest(RequestContext context) async {
  try {
    if (context.request.method != HttpMethod.post) {
      return Response(statusCode: HttpStatus.methodNotAllowed);
    }

    final contentType = context.request.headers['content-type'];
    if (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/')) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': 'Content-Type must be multipart/form-data'},
      );
    }

    final stream = context.request.bytes();
    final bytes = <int>[];
    await for (final chunk in stream) {
      bytes.addAll(chunk);
    }
    final boundary = _extractBoundary(contentType);
    if (boundary == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': 'Missing multipart boundary'},
      );
    }

    final parts = _MultipartParser(boundary, bytes).parse();
    final filePart = parts.firstWhere(
      (p) => p.name == 'photo' && p.filename != null,
      orElse: () => _Part.empty,
    );

    if (filePart == _Part.empty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': 'Field "photo" file is required'},
      );
    }

    final uploadsDir = Directory('uploads');
    if (!uploadsDir.existsSync()) {
      uploadsDir.createSync(recursive: true);
    }

    final safeName = _uniqueFileName(filePart.filename!);
    final filePath = '${uploadsDir.path}/$safeName';
    await File(filePath).writeAsBytes(filePart.data, flush: true);

    return Response.json(
      body: {
        'data': {'url': '/uploads/$safeName'},
      },
    );
  } catch (e) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {'error': 'Upload failed', 'details': e.toString()},
    );
  }
}

String? _extractBoundary(String contentType) {
  for (final part in contentType.split(';')) {
    final trimmed = part.trim();
    if (trimmed.toLowerCase().startsWith('boundary=')) {
      return trimmed.substring('boundary='.length);
    }
  }
  return null;
}

String _uniqueFileName(String original) {
  final ts = DateTime.now().millisecondsSinceEpoch;
  final rand = Random().nextInt(99999);
  final base = original.split('/').last.split(r'\').last;
  return '${ts}_${rand}_$base';
}

/// Minimal multipart parser for simple file upload (single part suffices).
class _MultipartParser {
  _MultipartParser(String boundary, this.bytes)
    : boundary = utf8.encode('--$boundary');
  final List<int> boundary;
  final List<int> bytes;

  List<_Part> parse() {
    final parts = <_Part>[];
    var index = 0;
    while (true) {
      final start = _find(bytes, boundary, index);
      if (start == -1) break;
      index = start + boundary.length;
      // Check for final boundary
      if (_match(bytes, index, utf8.encode('--'))) break;
      // Skip CRLF
      if (_match(bytes, index, [13, 10])) index += 2;

      // Headers
      final headerEnd = _find(bytes, utf8.encode('\r\n\r\n'), index);
      if (headerEnd == -1) break;
      final headerBytes = bytes.sublist(index, headerEnd);
      final headers = utf8.decode(headerBytes).split('\r\n');
      index = headerEnd + 4;

      // Data
      final boundaryAt = _find(bytes, boundary, index);
      if (boundaryAt == -1) break;
      final dataEnd = boundaryAt - 2; // strip CRLF before boundary
      if (dataEnd < index) break;
      final data = bytes.sublist(index, dataEnd);
      index = boundaryAt;

      String? name;
      String? filename;
      for (final h in headers) {
        final lower = h.toLowerCase();
        if (lower.startsWith('content-disposition')) {
          final params = h.split(';');
          for (final p in params) {
            final kv = p.split('=');
            if (kv.length == 2) {
              final key = kv[0].trim();
              final val = kv[1].trim().replaceAll('"', '');
              if (key == 'name') name = val;
              if (key == 'filename') filename = val;
            }
          }
        }
      }

      parts.add(_Part(name: name, filename: filename, data: data));
    }
    return parts;
  }

  int _find(List<int> source, List<int> pattern, int start) {
    for (var i = start; i <= source.length - pattern.length; i++) {
      if (_match(source, i, pattern)) return i;
    }
    return -1;
  }

  bool _match(List<int> source, int start, List<int> pattern) {
    if (start + pattern.length > source.length) return false;
    for (var i = 0; i < pattern.length; i++) {
      if (source[start + i] != pattern[i]) return false;
    }
    return true;
  }
}

class _Part {
  const _Part({required this.name, required this.filename, required this.data});
  final String? name;
  final String? filename;
  final List<int> data;

  static const empty = _Part(name: null, filename: null, data: <int>[]);
}
