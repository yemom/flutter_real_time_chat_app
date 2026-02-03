import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import '../prisma/prisma/generated_dart_client/user_repository.dart';

Future<Response> onRequest(RequestContext context) async {
  final body = await context.request.json();
  final username = body['username'] as String?;
  final password = body['password'] as String?;

  if (username == null || password == null) {
    return Response.json(
      body: {'error': 'Missing username or password'},
      statusCode: HttpStatus.badRequest,
    );
  }

  final repo = context.read<UserRepository>();
  final user = await repo.authUser(username: username, password: password);
  if (user == null) {
    return Response.json(
      body: {'error': 'Username or password is incorrect'},
      statusCode: HttpStatus.forbidden,
    );
  }

  final token = JWT({'userId': user.id}).sign(SecretKey('1221'));
  return Response.json(
    body: {
      'message': 'User authenticated',
      'user': user.toJson(),
      'token': token,
    },
  );
}
