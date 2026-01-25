import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import '../../prisma/prisma/generated_dart_client/user_repository.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  return switch (context.request.method) {
    HttpMethod.delete => _deleteUser(id, context),
    HttpMethod.put => _updateUser(id, context),
    _ => Future.value(Response(body: 'This is default')),
  };
}

Future<Response> _deleteUser(String id, RequestContext context) async {
  final parsedId = int.tryParse(id);
  if (parsedId == null) {
    return Response.json(
      body: {'error': 'Invalid user id'},
      statusCode: HttpStatus.badRequest,
    );
  }
  final repo = context.read<UserRepository>();
  final success = await repo.deleteUser(parsedId);
  if (!success) {
    return Response.json(
      body: {'error': 'User not found'},
      statusCode: HttpStatus.notFound,
    );
  }
  return Response.json(body: {'message': 'User deleted successfully'});
}

Future<Response> _updateUser(String id, RequestContext context) async {
  final parsedId = int.tryParse(id);
  if (parsedId == null) {
    return Response.json(
      body: {'error': 'Invalid user id'},
      statusCode: HttpStatus.badRequest,
    );
  }

  final json = (await context.request.json()) as Map<String, dynamic>;
  final name = json['name'] as String?;
  final lastname = json['lastname'] as String?;
  final username = json['username'] as String?;
  final password = json['password'] as String?;

  if (name == null &&
      lastname == null &&
      username == null &&
      password == null) {
    return Response.json(
      body: {'error': 'Nothing to update'},
      statusCode: HttpStatus.badRequest,
    );
  }

  final repo = context.read<UserRepository>();
  final updated = await repo.updateUser(
    id: parsedId,
    name: name,
    lastname: lastname,
    username: username,
    password: password,
  );

  if (updated == null) {
    return Response.json(
      body: {'error': 'User not found or update failed'},
      statusCode: HttpStatus.notFound,
    );
  }

  return Response.json(
    body: {'message': 'User updated successfully', 'user': updated},
  );
}
