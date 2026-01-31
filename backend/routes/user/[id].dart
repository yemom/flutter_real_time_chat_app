import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import '../../prisma/prisma/generated_dart_client/user_repository.dart';
import '../../lib/location_store.dart';

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

  Map<String, dynamic>? location;
  final rawLocation = json['location'];
  if (rawLocation is Map<String, dynamic>) {
    location = rawLocation;
  } else if (rawLocation is Map) {
    location = Map<String, dynamic>.from(rawLocation);
  }

  if (location != null) {
    userLocations[parsedId] = {
      'lat': location['lat'],
      'lng': location['lng'],
      'name': location['name'],
    };
  }

  if (name == null &&
      lastname == null &&
      username == null &&
      password == null &&
      location == null) {
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

  final userJson = updated.toJson();
  final loc = userLocations[parsedId];
  if (loc != null) {
    userJson['lat'] = loc['lat'];
    userJson['lng'] = loc['lng'];
    userJson['location'] = loc['name'];
  }

  return Response.json(
    body: {'message': 'User updated successfully', 'user': userJson},
  );
}
