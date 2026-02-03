import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import '../prisma/prisma/generated_dart_client/user_repository.dart';

Future<Response> onRequest(RequestContext context) async {
  final body = await context.request.json();

  final username = body['username'] as String?;
  final password = body['password'] as String?;
  final firstname = body['firstname'] as String?;
  final lastname = body['lastname'] as String?;

  if (username == null ||
      password == null ||
      firstname == null ||
      lastname == null) {
    return Response.json(
      body: {'error': 'Missing required fields'},
      statusCode: HttpStatus.badRequest,
    );
  }

  final repo = context.read<UserRepository>();
  final user = await repo.createUser(
    name: firstname,
    lastname: lastname,
    username: username,
    password: password,
  );

  if (user == null) {
    return Response.json(
      body: {'error': 'User already exists'},
      statusCode: HttpStatus.conflict,
    );
  }

  final token = JWT({'userId': user.id}).sign(SecretKey('1221'));
  return Response.json(
    body: {'message': 'User created', 'user': user.toJson(), 'token': token},
  );
}
