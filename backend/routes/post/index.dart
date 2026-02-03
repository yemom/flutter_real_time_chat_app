import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:orm/orm.dart' as orm;

import '../../prisma/prisma/generated_dart_client/client.dart';
import '../../prisma/prisma/generated_dart_client/model.dart';
import '../../prisma/prisma/generated_dart_client/prisma.dart';

Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _handleGet(context);
  }
  if (method == HttpMethod.post) {
    return _handlePost(context);
  }
  if (method == HttpMethod.put) {
    return _handleUpdate(context);
  }
  if (method == HttpMethod.delete) {
    return _handleDelete(context);
  }

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGet(RequestContext context) async {
  final db = context.read<PrismaClient>();
  final posts = await db.post.findMany(
    orderBy: orm.PrismaUnion<
      Iterable<PostOrderByWithRelationInput>,
      PostOrderByWithRelationInput
    >.$2(PostOrderByWithRelationInput(date: SortOrder.desc)),
    include: PostInclude(
      owner: orm.PrismaUnion<bool, PostOwnerArgs>.$1(true),
      $count: orm.PrismaUnion<bool, PostCountArgs>.$2(
        PostCountArgs(select: PostCountOutputTypeSelect(likes: true)),
      ),
    ),
  );

  return Response.json(body: {'data': posts.map(_postToJson).toList()});
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

  final json = await context.request.json() as Map<String, dynamic>;
  final message = (json['message'] ?? '').toString();
  final image = (json['image'] as String?)?.trim();

  if (message.isEmpty) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {'error': 'message is required'},
    );
  }

  final db = context.read<PrismaClient>();
  final normalizedImage = _normalizeImage(image);
  final created = await db.post.create(
    data: orm.PrismaUnion<PostCreateInput, PostUncheckedCreateInput>.$1(
      PostCreateInput(
        message: message,
        image:
            normalizedImage == null
                ? null
                : orm.PrismaUnion<String, orm.PrismaNull>.$1(normalizedImage),
        owner: UserCreateNestedOneWithoutPostsInput(
          connect: UserWhereUniqueInput(id: userId),
        ),
      ),
    ),
    include: PostInclude(
      owner: orm.PrismaUnion<bool, PostOwnerArgs>.$1(true),
      $count: orm.PrismaUnion<bool, PostCountArgs>.$2(
        PostCountArgs(select: PostCountOutputTypeSelect(likes: true)),
      ),
    ),
  );

  return Response.json(body: {'data': _postToJson(created)});
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

  final db = context.read<PrismaClient>();
  final existing = await db.post.findUnique(
    where: PostWhereUniqueInput(id: id),
  );
  if (existing == null) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {'error': 'Post not found'},
    );
  }
  if (existing.ownerId != userId) {
    return Response.json(
      statusCode: HttpStatus.forbidden,
      body: {'error': 'Forbidden'},
    );
  }

  final hasMessage = json.containsKey('message');
  final hasImage = json.containsKey('image');
  final message = hasMessage ? (json['message'] ?? '').toString() : null;
  if (hasMessage && message!.isEmpty) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {'error': 'message is required'},
    );
  }
  final image = hasImage ? _normalizeImage(json['image'] as String?) : null;
  final shouldUpdateImage = hasImage && image != null;

  final updated = await db.post.update(
    where: PostWhereUniqueInput(id: id),
    data: orm.PrismaUnion<PostUpdateInput, PostUncheckedUpdateInput>.$1(
      PostUpdateInput(
        message:
            hasMessage
                ? orm.PrismaUnion<String, StringFieldUpdateOperationsInput>.$1(
                  message!,
                )
                : null,
        image:
            shouldUpdateImage
                ? orm.PrismaUnion<
                  String,
                  orm.PrismaUnion<
                    NullableStringFieldUpdateOperationsInput,
                    orm.PrismaNull
                  >
                >.$1(image!)
                : null,
      ),
    ),
    include: PostInclude(
      owner: orm.PrismaUnion<bool, PostOwnerArgs>.$1(true),
      $count: orm.PrismaUnion<bool, PostCountArgs>.$2(
        PostCountArgs(select: PostCountOutputTypeSelect(likes: true)),
      ),
    ),
  );
  if (updated == null) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {'error': 'Post not found'},
    );
  }

  return Response.json(body: {'data': _postToJson(updated)});
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

  final db = context.read<PrismaClient>();
  final existing = await db.post.findUnique(
    where: PostWhereUniqueInput(id: id),
  );
  if (existing == null) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {'error': 'Post not found'},
    );
  }
  if (existing.ownerId != userId) {
    return Response.json(
      statusCode: HttpStatus.forbidden,
      body: {'error': 'Forbidden'},
    );
  }

  await db.post.delete(where: PostWhereUniqueInput(id: id));
  return Response.json(
    body: {
      'data': {'id': id},
    },
  );
}

Map<String, dynamic> _postToJson(Post post) {
  final owner = post.owner;
  return {
    'id': post.id,
    'message': post.message,
    'image': post.image,
    'date': post.date?.toIso8601String(),
    'likes': post.$count?.likes ?? 0,
    'owner':
        owner == null
            ? null
            : {
              'id': owner.id,
              'firstname': owner.name,
              'lastname': owner.lastname,
              'username': owner.username,
              'mobile': null,
              'birthday': null,
              'gender': null,
              'visibleGender': null,
            },
  };
}
