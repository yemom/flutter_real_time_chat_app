import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../prisma/prisma/generated_dart_client/user_repository.dart';

// Simple in-memory store so the endpoint works without a Post table yet.
final List<Map<String, dynamic>> _posts = [];

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _handleGet(context);
    case HttpMethod.post:
      return _handlePost(context);
    case HttpMethod.put:
      return _handleUpdate(context);
    case HttpMethod.delete:
      return _handleDelete(context);
    default:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _handleGet(RequestContext context) async {
  return Response.json(body: {'data': _posts});
}

Future<Response> _handlePost(RequestContext context) async {
  // bearerAuthentication<int> stores the user id in the context
  int? userId;
  try {
    userId = context.read<int>();
  } catch (_) {
    userId = null;
  }

  if (userId == null) {
    return Response.json(
      statusCode: HttpStatus.unauthorized,
      body: {'error': 'Unauthorized'},
    );
  }

  UserRepository? repo;
  var user;
  try {
    repo = context.read<UserRepository>();
    user = await repo.getById(userId);
  } catch (_) {
    user = null;
  }

  final json = await context.request.json() as Map<String, dynamic>;
  final message = (json['message'] ?? '').toString();
  final image = (json['image'] as String?)?.trim();

  if (message.isEmpty) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {'error': 'message is required'},
    );
  }

  final post = <String, dynamic>{
    'id': _posts.length + 1,
    'message': message,
    'image': _normalizeImage(image),
    'date': DateTime.now().toIso8601String(),
    'owner':
        user == null
            ? null
            : {
              'id': user.id,
              'firstname': user.name ?? user.username,
              'lastname': user.lastname,
              'mobile': null,
              'birthday': null,
              'gender': null,
              'visibleGender': null,
            },
  };

  _posts.insert(0, post);

  return Response.json(body: {'data': post});
}

String? _normalizeImage(String? raw) {
  if (raw == null) return null;
  final value = raw.trim();
  if (value.isEmpty) return null;
  return value.startsWith('/uploads/') ? value : '/uploads/$value';
}

Future<Response> _handleUpdate(RequestContext context) async {
  int? userId;
  try {
    userId = context.read<int>();
  } catch (_) {
    userId = null;
  }

  if (userId == null) {
    return Response.json(
      statusCode: HttpStatus.unauthorized,
      body: {'error': 'Unauthorized'},
    );
  }

  final json = await context.request.json() as Map<String, dynamic>;
  final id = json['id'] as int?;
  if (id == null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {'error': 'id is required'},
    );
  }

  final idx = _posts.indexWhere((p) => p['id'] == id);
  if (idx == -1) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {'error': 'Post not found'},
    );
  }

  final message = (json['message'] ?? _posts[idx]['message']).toString();
  final image = _normalizeImage(
    json['image'] as String? ?? _posts[idx]['image'] as String?,
  );

  _posts[idx] = {..._posts[idx], 'message': message, 'image': image};

  return Response.json(body: {'data': _posts[idx]});
}

Future<Response> _handleDelete(RequestContext context) async {
  int? userId;
  try {
    userId = context.read<int>();
  } catch (_) {
    userId = null;
  }

  if (userId == null) {
    return Response.json(
      statusCode: HttpStatus.unauthorized,
      body: {'error': 'Unauthorized'},
    );
  }

  final json = await context.request.json() as Map<String, dynamic>;
  final id = json['id'] as int?;
  if (id == null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {'error': 'id is required'},
    );
  }

  final idx = _posts.indexWhere((p) => p['id'] == id);
  if (idx == -1) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {'error': 'Post not found'},
    );
  }

  final removed = _posts.removeAt(idx);
  return Response.json(body: {'data': removed});
}
