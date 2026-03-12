import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../prisma/prisma/generated_dart_client/client.dart';
import '../prisma/prisma/generated_dart_client/user_repository.dart';

final Map<String, String> _envFileValues = _loadEnvFile();

final String _datasourceUrl =
  Platform.environment['DATABASE_URL'] ??
  _envFileValues['DATABASE_URL'] ??
  'mysql://root:1221@localhost:3306/mydb';

final _prisma = PrismaClient(datasourceUrl: _datasourceUrl);

Handler middleware(Handler handler) {
  return handler
      .use(_serveUploads())
      .use(requestLogger())
      .use(provider<PrismaClient>((_) => _prisma))
      .use(provider<UserRepository>((_) => UserRepository(_prisma)))
      .use(_provideUserRepo());
}

// Lightweight static file server for GET/HEAD /uploads/* so image URLs resolve.
Middleware _serveUploads() {
  return (handler) {
    return (context) async {
      final method = context.request.method;
      final path = context.request.uri.path;

      final isStatic =
          (method == HttpMethod.get || method == HttpMethod.head) &&
          path.startsWith('/uploads/');
      if (!isStatic) {
        return handler(context);
      }

      final relative = path.substring('/uploads/'.length);
      final segments =
          relative.split('/').where((s) => s.isNotEmpty && s != '..').toList();
      if (segments.isEmpty) {
        return Response(statusCode: HttpStatus.notFound);
      }

      final filePath = ['uploads', ...segments].join(Platform.pathSeparator);
      final file = File(filePath);
      if (!file.existsSync()) {
        return Response(statusCode: HttpStatus.notFound);
      }

      final stat = file.statSync();
      final headers = <String, String>{
        HttpHeaders.contentLengthHeader: stat.size.toString(),
        HttpHeaders.contentTypeHeader: _contentType(file.path),
        HttpHeaders.acceptRangesHeader: 'bytes',
      };

      if (method == HttpMethod.head) {
        return Response(headers: headers);
      }

      // Serve bytes directly; Response doesn't take a stream in this version.
      final data = file.readAsBytesSync();
      return Response.bytes(body: data, headers: headers);
    };
  };
}

String _contentType(String filePath) {
  final lower = filePath.toLowerCase();
  if (lower.endsWith('.png')) return 'image/png';
  if (lower.endsWith('.jpg') || lower.endsWith('.jpeg')) return 'image/jpeg';
  if (lower.endsWith('.gif')) return 'image/gif';
  if (lower.endsWith('.webp')) return 'image/webp';
  if (lower.endsWith('.svg')) return 'image/svg+xml';
  return 'application/octet-stream';
}

Middleware _provideUserRepo() {
  return provider((context) => UserRepository(_prisma));
}

Map<String, String> _loadEnvFile() {
  final file = File('.env');
  if (!file.existsSync()) {
    return const {};
  }

  final values = <String, String>{};
  for (final rawLine in file.readAsLinesSync()) {
    final line = rawLine.trim();
    if (line.isEmpty || line.startsWith('#')) {
      continue;
    }

    final separator = line.indexOf('=');
    if (separator <= 0) {
      continue;
    }

    final key = line.substring(0, separator).trim();
    if (key.isEmpty) {
      continue;
    }

    var value = line.substring(separator + 1).trim();
    if (value.length >= 2 && value.startsWith('"') && value.endsWith('"')) {
      value = value.substring(1, value.length - 1);
    }

    values[key] = value;
  }

  return values;
}
