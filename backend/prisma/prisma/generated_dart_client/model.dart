// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'model.dart' as _i1;
import 'prisma.dart' as _i2;

class Like {
  const Like({this.id, this.userId, this.postId, this.user, this.post});

  factory Like.fromJson(Map json) => Like(
    id: json['id'],
    userId: json['userId'],
    postId: json['postId'],
    user: json['user'] is Map ? _i1.User.fromJson(json['user']) : null,
    post: json['post'] is Map ? _i1.Post.fromJson(json['post']) : null,
  );

  final int? id;

  final int? userId;

  final int? postId;

  final _i1.User? user;

  final _i1.Post? post;

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
    'user': user?.toJson(),
    'post': post?.toJson(),
  };
}

class Post {
  const Post({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
    this.owner,
    this.likes,
    this.$count,
  });

  factory Post.fromJson(Map json) => Post(
    id: json['id'],
    message: json['message'],
    image: json['image'],
    date: switch (json['date']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['date'],
    },
    ownerId: json['ownerId'],
    owner: json['owner'] is Map ? _i1.User.fromJson(json['owner']) : null,
    likes: (json['likes'] as Iterable?)?.map((json) => _i1.Like.fromJson(json)),
    $count: json['_count'] is Map
        ? _i2.PostCountOutputType.fromJson(json['_count'])
        : null,
  );

  final int? id;

  final String? message;

  final String? image;

  final DateTime? date;

  final int? ownerId;

  final _i1.User? owner;

  final Iterable<_i1.Like>? likes;

  final _i2.PostCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date?.toIso8601String(),
    'ownerId': ownerId,
    'owner': owner?.toJson(),
    'likes': likes?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}

class User {
  const User({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.password,
    this.posts,
    this.likes,
    this.$count,
  });

  factory User.fromJson(Map json) => User(
    id: json['id'],
    name: json['name'],
    lastname: json['lastname'],
    username: json['username'],
    password: json['password'],
    posts: (json['posts'] as Iterable?)?.map((json) => _i1.Post.fromJson(json)),
    likes: (json['likes'] as Iterable?)?.map((json) => _i1.Like.fromJson(json)),
    $count: json['_count'] is Map
        ? _i2.UserCountOutputType.fromJson(json['_count'])
        : null,
  );

  final int? id;

  final String? name;

  final String? lastname;

  final String? username;

  final String? password;

  final Iterable<_i1.Post>? posts;

  final Iterable<_i1.Like>? likes;

  final _i2.UserCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
    'posts': posts?.map((e) => e.toJson()),
    'likes': likes?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}
