import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../prisma/prisma/generated_dart_client/client.dart';
import '../prisma/prisma/generated_dart_client/user_repository.dart';

// Use DATABASE_URL from environment, with a safe default matching docker-compose.
final String _datasourceUrl =
    Platform.environment['DATABASE_URL'] ??
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

      final stat = await file.stat();
      final headers = <String, String>{
        HttpHeaders.contentLengthHeader: stat.size.toString(),
        HttpHeaders.contentTypeHeader: _contentType(file.path),
        HttpHeaders.acceptRangesHeader: 'bytes',
      };

      if (method == HttpMethod.head) {
        return Response(statusCode: HttpStatus.ok, headers: headers);
      }

      // Serve bytes directly; Response doesn't take a stream in this version.
      final data = await file.readAsBytes();
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
