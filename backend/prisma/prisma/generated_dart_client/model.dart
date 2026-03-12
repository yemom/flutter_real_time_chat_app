// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'model.dart' as _i1;
import 'prisma.dart' as _i2;

class Follow {
  const Follow({
    this.id,
    this.followerId,
    this.followingId,
    this.userFollowFollowerIdTouser,
    this.userFollowFollowingIdTouser,
  });

  factory Follow.fromJson(Map json) => Follow(
    id: json['id'],
    followerId: json['followerId'],
    followingId: json['followingId'],
    userFollowFollowerIdTouser: json['user_follow_followerIdTouser'] is Map
        ? _i1.User.fromJson(json['user_follow_followerIdTouser'])
        : null,
    userFollowFollowingIdTouser: json['user_follow_followingIdTouser'] is Map
        ? _i1.User.fromJson(json['user_follow_followingIdTouser'])
        : null,
  );

  final int? id;

  final int? followerId;

  final int? followingId;

  final _i1.User? userFollowFollowerIdTouser;

  final _i1.User? userFollowFollowingIdTouser;

  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
    'user_follow_followerIdTouser': userFollowFollowerIdTouser?.toJson(),
    'user_follow_followingIdTouser': userFollowFollowingIdTouser?.toJson(),
  };
}

class User {
  const User({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
    this.comment,
    this.followFollowFollowerIdTouser,
    this.followFollowFollowingIdTouser,
    this.like,
    this.post,
    this.$count,
  });

  factory User.fromJson(Map json) => User(
    id: json['id'],
    name: json['name'],
    lastname: json['lastname'],
    username: json['username'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    passwordHash: json['passwordHash'],
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    comment: (json['comment'] as Iterable?)?.map(
      (json) => _i1.Comment.fromJson(json),
    ),
    followFollowFollowerIdTouser:
        (json['follow_follow_followerIdTouser'] as Iterable?)?.map(
          (json) => _i1.Follow.fromJson(json),
        ),
    followFollowFollowingIdTouser:
        (json['follow_follow_followingIdTouser'] as Iterable?)?.map(
          (json) => _i1.Follow.fromJson(json),
        ),
    like: (json['like'] as Iterable?)?.map((json) => _i1.Like.fromJson(json)),
    post: (json['post'] as Iterable?)?.map((json) => _i1.Post.fromJson(json)),
    $count: json['_count'] is Map
        ? _i2.UserCountOutputType.fromJson(json['_count'])
        : null,
  );

  final int? id;

  final String? name;

  final String? lastname;

  final String? username;

  final DateTime? createdAt;

  final String? passwordHash;

  final DateTime? updatedAt;

  final Iterable<_i1.Comment>? comment;

  final Iterable<_i1.Follow>? followFollowFollowerIdTouser;

  final Iterable<_i1.Follow>? followFollowFollowingIdTouser;

  final Iterable<_i1.Like>? like;

  final Iterable<_i1.Post>? post;

  final _i2.UserCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt?.toIso8601String(),
    'passwordHash': passwordHash,
    'updatedAt': updatedAt?.toIso8601String(),
    'comment': comment?.map((e) => e.toJson()),
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser?.map(
      (e) => e.toJson(),
    ),
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser?.map(
      (e) => e.toJson(),
    ),
    'like': like?.map((e) => e.toJson()),
    'post': post?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}

class Like {
  const Like({this.id, this.userId, this.postId, this.post, this.user});

  factory Like.fromJson(Map json) => Like(
    id: json['id'],
    userId: json['userId'],
    postId: json['postId'],
    post: json['post'] is Map ? _i1.Post.fromJson(json['post']) : null,
    user: json['user'] is Map ? _i1.User.fromJson(json['user']) : null,
  );

  final int? id;

  final int? userId;

  final int? postId;

  final _i1.Post? post;

  final _i1.User? user;

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
    'post': post?.toJson(),
    'user': user?.toJson(),
  };
}

class Post {
  const Post({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
    this.comment,
    this.like,
    this.user,
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
    comment: (json['comment'] as Iterable?)?.map(
      (json) => _i1.Comment.fromJson(json),
    ),
    like: (json['like'] as Iterable?)?.map((json) => _i1.Like.fromJson(json)),
    user: json['user'] is Map ? _i1.User.fromJson(json['user']) : null,
    $count: json['_count'] is Map
        ? _i2.PostCountOutputType.fromJson(json['_count'])
        : null,
  );

  final int? id;

  final String? message;

  final String? image;

  final DateTime? date;

  final int? ownerId;

  final Iterable<_i1.Comment>? comment;

  final Iterable<_i1.Like>? like;

  final _i1.User? user;

  final _i2.PostCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date?.toIso8601String(),
    'ownerId': ownerId,
    'comment': comment?.map((e) => e.toJson()),
    'like': like?.map((e) => e.toJson()),
    'user': user?.toJson(),
    '_count': $count?.toJson(),
  };
}

class Comment {
  const Comment({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
    this.post,
    this.user,
  });

  factory Comment.fromJson(Map json) => Comment(
    id: json['id'],
    message: json['message'],
    date: switch (json['date']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['date'],
    },
    userId: json['userId'],
    postId: json['postId'],
    post: json['post'] is Map ? _i1.Post.fromJson(json['post']) : null,
    user: json['user'] is Map ? _i1.User.fromJson(json['user']) : null,
  );

  final int? id;

  final String? message;

  final DateTime? date;

  final int? userId;

  final int? postId;

  final _i1.Post? post;

  final _i1.User? user;

  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date?.toIso8601String(),
    'userId': userId,
    'postId': postId,
    'post': post?.toJson(),
    'user': user?.toJson(),
  };
}
