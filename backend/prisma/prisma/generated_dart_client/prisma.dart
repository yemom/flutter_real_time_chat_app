// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

class UserCountOutputType {
  const UserCountOutputType({
    this.comment,
    this.followFollowFollowerIdTouser,
    this.followFollowFollowingIdTouser,
    this.like,
    this.post,
  });

  factory UserCountOutputType.fromJson(Map json) => UserCountOutputType(
    comment: json['comment'],
    followFollowFollowerIdTouser: json['follow_follow_followerIdTouser'],
    followFollowFollowingIdTouser: json['follow_follow_followingIdTouser'],
    like: json['like'],
    post: json['post'],
  );

  final int? comment;

  final int? followFollowFollowerIdTouser;

  final int? followFollowFollowingIdTouser;

  final int? like;

  final int? post;

  Map<String, dynamic> toJson() => {
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
  };
}

class PostCountOutputType {
  const PostCountOutputType({this.comment, this.like});

  factory PostCountOutputType.fromJson(Map json) =>
      PostCountOutputType(comment: json['comment'], like: json['like']);

  final int? comment;

  final int? like;

  Map<String, dynamic> toJson() => {'comment': comment, 'like': like};
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
  };
}

class IntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
  };
}

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.search,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final String? search;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'contains': contains,
    'startsWith': startsWith,
    'endsWith': endsWith,
    'search': search,
    'not': not,
  };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.search,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final String? search;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'contains': contains,
    'startsWith': startsWith,
    'endsWith': endsWith,
    'search': search,
    'not': not,
  };
}

class NestedDateTimeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
  };
}

class DateTimeFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
  };
}

class NestedStringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.search,
    this.not,
  });

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>
  >?
  equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final String? search;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>
  >?
  not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'contains': contains,
    'startsWith': startsWith,
    'endsWith': endsWith,
    'search': search,
    'not': not,
  };
}

class StringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.search,
    this.not,
  });

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>
  >?
  equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final String? search;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>
  >?
  not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'contains': contains,
    'startsWith': startsWith,
    'endsWith': endsWith,
    'search': search,
    'not': not,
  };
}

class CommentListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentListRelationFilter({this.every, this.some, this.none});

  final _i2.CommentWhereInput? every;

  final _i2.CommentWhereInput? some;

  final _i2.CommentWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {'every': every, 'some': some, 'none': none};
}

class FollowWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.followerId,
    this.followingId,
    this.userFollowFollowerIdTouser,
    this.userFollowFollowingIdTouser,
  });

  final _i1.PrismaUnion<_i2.FollowWhereInput, Iterable<_i2.FollowWhereInput>>?
  AND;

  final Iterable<_i2.FollowWhereInput>? OR;

  final _i1.PrismaUnion<_i2.FollowWhereInput, Iterable<_i2.FollowWhereInput>>?
  NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? followerId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? followingId;

  final _i1.PrismaUnion<_i2.UserScalarRelationFilter, _i2.UserWhereInput>?
  userFollowFollowerIdTouser;

  final _i1.PrismaUnion<_i2.UserScalarRelationFilter, _i2.UserWhereInput>?
  userFollowFollowingIdTouser;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
    'user_follow_followerIdTouser': userFollowFollowerIdTouser,
    'user_follow_followingIdTouser': userFollowFollowingIdTouser,
  };
}

class FollowListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowListRelationFilter({this.every, this.some, this.none});

  final _i2.FollowWhereInput? every;

  final _i2.FollowWhereInput? some;

  final _i2.FollowWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {'every': every, 'some': some, 'none': none};
}

class PostListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostListRelationFilter({this.every, this.some, this.none});

  final _i2.PostWhereInput? every;

  final _i2.PostWhereInput? some;

  final _i2.PostWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {'every': every, 'some': some, 'none': none};
}

class UserWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
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
  });

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? lastname;

  final _i1.PrismaUnion<_i2.StringFilter, String>? username;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.StringFilter, String>? passwordHash;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.CommentListRelationFilter? comment;

  final _i2.FollowListRelationFilter? followFollowFollowerIdTouser;

  final _i2.FollowListRelationFilter? followFollowFollowingIdTouser;

  final _i2.LikeListRelationFilter? like;

  final _i2.PostListRelationFilter? post;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
  };
}

class UserScalarRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserScalarRelationFilter({this.$is, this.isNot});

  final _i2.UserWhereInput? $is;

  final _i2.UserWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {'is': $is, 'isNot': isNot};
}

class LikeWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.userId,
    this.postId,
    this.post,
    this.user,
  });

  final _i1.PrismaUnion<_i2.LikeWhereInput, Iterable<_i2.LikeWhereInput>>? AND;

  final Iterable<_i2.LikeWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LikeWhereInput, Iterable<_i2.LikeWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? postId;

  final _i1.PrismaUnion<_i2.PostScalarRelationFilter, _i2.PostWhereInput>? post;

  final _i1.PrismaUnion<_i2.UserScalarRelationFilter, _i2.UserWhereInput>? user;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'userId': userId,
    'postId': postId,
    'post': post,
    'user': user,
  };
}

class LikeListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeListRelationFilter({this.every, this.some, this.none});

  final _i2.LikeWhereInput? every;

  final _i2.LikeWhereInput? some;

  final _i2.LikeWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {'every': every, 'some': some, 'none': none};
}

class PostWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
    this.comment,
    this.like,
    this.user,
  });

  final _i1.PrismaUnion<_i2.PostWhereInput, Iterable<_i2.PostWhereInput>>? AND;

  final Iterable<_i2.PostWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PostWhereInput, Iterable<_i2.PostWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? message;

  final _i1.PrismaUnion<
    _i2.StringNullableFilter,
    _i1.PrismaUnion<String, _i1.PrismaNull>
  >?
  image;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? date;

  final _i1.PrismaUnion<_i2.IntFilter, int>? ownerId;

  final _i2.CommentListRelationFilter? comment;

  final _i2.LikeListRelationFilter? like;

  final _i1.PrismaUnion<_i2.UserScalarRelationFilter, _i2.UserWhereInput>? user;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    'comment': comment,
    'like': like,
    'user': user,
  };
}

class PostScalarRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostScalarRelationFilter({this.$is, this.isNot});

  final _i2.PostWhereInput? $is;

  final _i2.PostWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {'is': $is, 'isNot': isNot};
}

class CommentWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
    this.post,
    this.user,
  });

  final _i1.PrismaUnion<_i2.CommentWhereInput, Iterable<_i2.CommentWhereInput>>?
  AND;

  final Iterable<_i2.CommentWhereInput>? OR;

  final _i1.PrismaUnion<_i2.CommentWhereInput, Iterable<_i2.CommentWhereInput>>?
  NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? message;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? date;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? postId;

  final _i1.PrismaUnion<_i2.PostScalarRelationFilter, _i2.PostWhereInput>? post;

  final _i1.PrismaUnion<_i2.UserScalarRelationFilter, _i2.UserWhereInput>? user;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
    'post': post,
    'user': user,
  };
}

class CommentWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.message,
    this.date,
    this.userId,
    this.postId,
    this.post,
    this.user,
  });

  final int? id;

  final _i1.PrismaUnion<_i2.CommentWhereInput, Iterable<_i2.CommentWhereInput>>?
  AND;

  final Iterable<_i2.CommentWhereInput>? OR;

  final _i1.PrismaUnion<_i2.CommentWhereInput, Iterable<_i2.CommentWhereInput>>?
  NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? message;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? date;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? postId;

  final _i1.PrismaUnion<_i2.PostScalarRelationFilter, _i2.PostWhereInput>? post;

  final _i1.PrismaUnion<_i2.UserScalarRelationFilter, _i2.UserWhereInput>? user;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
    'post': post,
    'user': user,
  };
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

enum NullsOrder implements _i1.PrismaEnum {
  first._('first'),
  last._('last');

  const NullsOrder._(this.name);

  @override
  final String name;
}

class SortOrderInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const SortOrderInput({required this.sort, this.nulls});

  final _i2.SortOrder sort;

  final _i2.NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => {'sort': sort, 'nulls': nulls};
}

class CommentOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class LikeOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class FollowOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class PostOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

enum UserOrderByRelevanceFieldEnum implements _i1.PrismaEnum {
  name$._('name'),
  lastname._('lastname'),
  username._('username'),
  passwordHash._('passwordHash');

  const UserOrderByRelevanceFieldEnum._(this.name);

  @override
  final String name;
}

class UserOrderByRelevanceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByRelevanceInput({
    required this.fields,
    required this.sort,
    required this.search,
  });

  final _i1.PrismaUnion<
    _i2.UserOrderByRelevanceFieldEnum,
    Iterable<_i2.UserOrderByRelevanceFieldEnum>
  >
  fields;

  final _i2.SortOrder sort;

  final String search;

  @override
  Map<String, dynamic> toJson() => {
    'fields': fields,
    'sort': sort,
    'search': search,
  };
}

class UserOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithRelationInput({
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
    this.$relevance,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? lastname;

  final _i2.SortOrder? username;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? passwordHash;

  final _i2.SortOrder? updatedAt;

  final _i2.CommentOrderByRelationAggregateInput? comment;

  final _i2.FollowOrderByRelationAggregateInput? followFollowFollowerIdTouser;

  final _i2.FollowOrderByRelationAggregateInput? followFollowFollowingIdTouser;

  final _i2.LikeOrderByRelationAggregateInput? like;

  final _i2.PostOrderByRelationAggregateInput? post;

  final _i2.UserOrderByRelevanceInput? $relevance;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
    '_relevance': $relevance,
  };
}

enum PostOrderByRelevanceFieldEnum implements _i1.PrismaEnum {
  message._('message'),
  image._('image');

  const PostOrderByRelevanceFieldEnum._(this.name);

  @override
  final String name;
}

class PostOrderByRelevanceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostOrderByRelevanceInput({
    required this.fields,
    required this.sort,
    required this.search,
  });

  final _i1.PrismaUnion<
    _i2.PostOrderByRelevanceFieldEnum,
    Iterable<_i2.PostOrderByRelevanceFieldEnum>
  >
  fields;

  final _i2.SortOrder sort;

  final String search;

  @override
  Map<String, dynamic> toJson() => {
    'fields': fields,
    'sort': sort,
    'search': search,
  };
}

class PostOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostOrderByWithRelationInput({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
    this.comment,
    this.like,
    this.user,
    this.$relevance,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? message;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? image;

  final _i2.SortOrder? date;

  final _i2.SortOrder? ownerId;

  final _i2.CommentOrderByRelationAggregateInput? comment;

  final _i2.LikeOrderByRelationAggregateInput? like;

  final _i2.UserOrderByWithRelationInput? user;

  final _i2.PostOrderByRelevanceInput? $relevance;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    'comment': comment,
    'like': like,
    'user': user,
    '_relevance': $relevance,
  };
}

enum CommentOrderByRelevanceFieldEnum implements _i1.PrismaEnum {
  message._('message');

  const CommentOrderByRelevanceFieldEnum._(this.name);

  @override
  final String name;
}

class CommentOrderByRelevanceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentOrderByRelevanceInput({
    required this.fields,
    required this.sort,
    required this.search,
  });

  final _i1.PrismaUnion<
    _i2.CommentOrderByRelevanceFieldEnum,
    Iterable<_i2.CommentOrderByRelevanceFieldEnum>
  >
  fields;

  final _i2.SortOrder sort;

  final String search;

  @override
  Map<String, dynamic> toJson() => {
    'fields': fields,
    'sort': sort,
    'search': search,
  };
}

class CommentOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentOrderByWithRelationInput({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
    this.post,
    this.user,
    this.$relevance,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? message;

  final _i2.SortOrder? date;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? postId;

  final _i2.PostOrderByWithRelationInput? post;

  final _i2.UserOrderByWithRelationInput? user;

  final _i2.CommentOrderByRelevanceInput? $relevance;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
    'post': post,
    'user': user,
    '_relevance': $relevance,
  };
}

enum CommentScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'comment'),
  message<String>('message', 'comment'),
  date<DateTime>('date', 'comment'),
  userId<int>('userId', 'comment'),
  postId<int>('postId', 'comment');

  const CommentScalar(this.name, this.model);

  @override
  final String name;

  @override
  final String model;
}

class PostCommentArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCommentArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.CommentWhereInput? where;

  final _i1.PrismaUnion<
    Iterable<_i2.CommentOrderByWithRelationInput>,
    _i2.CommentOrderByWithRelationInput
  >?
  orderBy;

  final _i2.CommentWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.CommentScalar, Iterable<_i2.CommentScalar>>?
  distinct;

  final _i2.CommentSelect? select;

  final _i2.CommentInclude? include;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'orderBy': orderBy,
    'cursor': cursor,
    'take': take,
    'skip': skip,
    'distinct': distinct,
    'select': select,
    'include': include,
  };
}

class LikePostArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikePostArgs({this.select, this.include});

  final _i2.PostSelect? select;

  final _i2.PostInclude? include;

  @override
  Map<String, dynamic> toJson() => {'select': select, 'include': include};
}

class UserCommentArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCommentArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.CommentWhereInput? where;

  final _i1.PrismaUnion<
    Iterable<_i2.CommentOrderByWithRelationInput>,
    _i2.CommentOrderByWithRelationInput
  >?
  orderBy;

  final _i2.CommentWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.CommentScalar, Iterable<_i2.CommentScalar>>?
  distinct;

  final _i2.CommentSelect? select;

  final _i2.CommentInclude? include;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'orderBy': orderBy,
    'cursor': cursor,
    'take': take,
    'skip': skip,
    'distinct': distinct,
    'select': select,
    'include': include,
  };
}

class FollowUserFollowFollowerIdTouserArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUserFollowFollowerIdTouserArgs({this.select, this.include});

  final _i2.UserSelect? select;

  final _i2.UserInclude? include;

  @override
  Map<String, dynamic> toJson() => {'select': select, 'include': include};
}

class FollowUserFollowFollowingIdTouserArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUserFollowFollowingIdTouserArgs({this.select, this.include});

  final _i2.UserSelect? select;

  final _i2.UserInclude? include;

  @override
  Map<String, dynamic> toJson() => {'select': select, 'include': include};
}

class FollowInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowInclude({
    this.userFollowFollowerIdTouser,
    this.userFollowFollowingIdTouser,
  });

  final _i1.PrismaUnion<bool, _i2.FollowUserFollowFollowerIdTouserArgs>?
  userFollowFollowerIdTouser;

  final _i1.PrismaUnion<bool, _i2.FollowUserFollowFollowingIdTouserArgs>?
  userFollowFollowingIdTouser;

  @override
  Map<String, dynamic> toJson() => {
    'user_follow_followerIdTouser': userFollowFollowerIdTouser,
    'user_follow_followingIdTouser': userFollowFollowingIdTouser,
  };
}

class FollowOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowOrderByWithRelationInput({
    this.id,
    this.followerId,
    this.followingId,
    this.userFollowFollowerIdTouser,
    this.userFollowFollowingIdTouser,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? followerId;

  final _i2.SortOrder? followingId;

  final _i2.UserOrderByWithRelationInput? userFollowFollowerIdTouser;

  final _i2.UserOrderByWithRelationInput? userFollowFollowingIdTouser;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
    'user_follow_followerIdTouser': userFollowFollowerIdTouser,
    'user_follow_followingIdTouser': userFollowFollowingIdTouser,
  };
}

class FollowFollowerIdFollowingIdCompoundUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowFollowerIdFollowingIdCompoundUniqueInput({
    required this.followerId,
    required this.followingId,
  });

  final int followerId;

  final int followingId;

  @override
  Map<String, dynamic> toJson() => {
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowWhereUniqueInput({
    this.id,
    this.followerIdFollowingId,
    this.AND,
    this.OR,
    this.NOT,
    this.followerId,
    this.followingId,
    this.userFollowFollowerIdTouser,
    this.userFollowFollowingIdTouser,
  });

  final int? id;

  final _i2.FollowFollowerIdFollowingIdCompoundUniqueInput?
  followerIdFollowingId;

  final _i1.PrismaUnion<_i2.FollowWhereInput, Iterable<_i2.FollowWhereInput>>?
  AND;

  final Iterable<_i2.FollowWhereInput>? OR;

  final _i1.PrismaUnion<_i2.FollowWhereInput, Iterable<_i2.FollowWhereInput>>?
  NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? followerId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? followingId;

  final _i1.PrismaUnion<_i2.UserScalarRelationFilter, _i2.UserWhereInput>?
  userFollowFollowerIdTouser;

  final _i1.PrismaUnion<_i2.UserScalarRelationFilter, _i2.UserWhereInput>?
  userFollowFollowingIdTouser;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId_followingId': followerIdFollowingId,
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'followerId': followerId,
    'followingId': followingId,
    'user_follow_followerIdTouser': userFollowFollowerIdTouser,
    'user_follow_followingIdTouser': userFollowFollowingIdTouser,
  };
}

enum FollowScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'follow'),
  followerId<int>('followerId', 'follow'),
  followingId<int>('followingId', 'follow');

  const FollowScalar(this.name, this.model);

  @override
  final String name;

  @override
  final String model;
}

class UserFollowFollowFollowerIdTouserArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserFollowFollowFollowerIdTouserArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.FollowWhereInput? where;

  final _i1.PrismaUnion<
    Iterable<_i2.FollowOrderByWithRelationInput>,
    _i2.FollowOrderByWithRelationInput
  >?
  orderBy;

  final _i2.FollowWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.FollowScalar, Iterable<_i2.FollowScalar>>? distinct;

  final _i2.FollowSelect? select;

  final _i2.FollowInclude? include;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'orderBy': orderBy,
    'cursor': cursor,
    'take': take,
    'skip': skip,
    'distinct': distinct,
    'select': select,
    'include': include,
  };
}

class UserFollowFollowFollowingIdTouserArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserFollowFollowFollowingIdTouserArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.FollowWhereInput? where;

  final _i1.PrismaUnion<
    Iterable<_i2.FollowOrderByWithRelationInput>,
    _i2.FollowOrderByWithRelationInput
  >?
  orderBy;

  final _i2.FollowWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.FollowScalar, Iterable<_i2.FollowScalar>>? distinct;

  final _i2.FollowSelect? select;

  final _i2.FollowInclude? include;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'orderBy': orderBy,
    'cursor': cursor,
    'take': take,
    'skip': skip,
    'distinct': distinct,
    'select': select,
    'include': include,
  };
}

class LikeUserArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUserArgs({this.select, this.include});

  final _i2.UserSelect? select;

  final _i2.UserInclude? include;

  @override
  Map<String, dynamic> toJson() => {'select': select, 'include': include};
}

class LikeInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeInclude({this.post, this.user});

  final _i1.PrismaUnion<bool, _i2.LikePostArgs>? post;

  final _i1.PrismaUnion<bool, _i2.LikeUserArgs>? user;

  @override
  Map<String, dynamic> toJson() => {'post': post, 'user': user};
}

class LikeOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeOrderByWithRelationInput({
    this.id,
    this.userId,
    this.postId,
    this.post,
    this.user,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? postId;

  final _i2.PostOrderByWithRelationInput? post;

  final _i2.UserOrderByWithRelationInput? user;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
    'post': post,
    'user': user,
  };
}

class LikeUserIdPostIdCompoundUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUserIdPostIdCompoundUniqueInput({
    required this.userId,
    required this.postId,
  });

  final int userId;

  final int postId;

  @override
  Map<String, dynamic> toJson() => {'userId': userId, 'postId': postId};
}

class LikeWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeWhereUniqueInput({
    this.id,
    this.userIdPostId,
    this.AND,
    this.OR,
    this.NOT,
    this.userId,
    this.postId,
    this.post,
    this.user,
  });

  final int? id;

  final _i2.LikeUserIdPostIdCompoundUniqueInput? userIdPostId;

  final _i1.PrismaUnion<_i2.LikeWhereInput, Iterable<_i2.LikeWhereInput>>? AND;

  final Iterable<_i2.LikeWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LikeWhereInput, Iterable<_i2.LikeWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? postId;

  final _i1.PrismaUnion<_i2.PostScalarRelationFilter, _i2.PostWhereInput>? post;

  final _i1.PrismaUnion<_i2.UserScalarRelationFilter, _i2.UserWhereInput>? user;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId_postId': userIdPostId,
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'userId': userId,
    'postId': postId,
    'post': post,
    'user': user,
  };
}

enum LikeScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'like'),
  userId<int>('userId', 'like'),
  postId<int>('postId', 'like');

  const LikeScalar(this.name, this.model);

  @override
  final String name;

  @override
  final String model;
}

class UserLikeArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserLikeArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.LikeWhereInput? where;

  final _i1.PrismaUnion<
    Iterable<_i2.LikeOrderByWithRelationInput>,
    _i2.LikeOrderByWithRelationInput
  >?
  orderBy;

  final _i2.LikeWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.LikeScalar, Iterable<_i2.LikeScalar>>? distinct;

  final _i2.LikeSelect? select;

  final _i2.LikeInclude? include;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'orderBy': orderBy,
    'cursor': cursor,
    'take': take,
    'skip': skip,
    'distinct': distinct,
    'select': select,
    'include': include,
  };
}

class PostWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.message,
    this.image,
    this.date,
    this.ownerId,
    this.comment,
    this.like,
    this.user,
  });

  final int? id;

  final _i1.PrismaUnion<_i2.PostWhereInput, Iterable<_i2.PostWhereInput>>? AND;

  final Iterable<_i2.PostWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PostWhereInput, Iterable<_i2.PostWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? message;

  final _i1.PrismaUnion<
    _i2.StringNullableFilter,
    _i1.PrismaUnion<String, _i1.PrismaNull>
  >?
  image;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? date;

  final _i1.PrismaUnion<_i2.IntFilter, int>? ownerId;

  final _i2.CommentListRelationFilter? comment;

  final _i2.LikeListRelationFilter? like;

  final _i1.PrismaUnion<_i2.UserScalarRelationFilter, _i2.UserWhereInput>? user;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    'comment': comment,
    'like': like,
    'user': user,
  };
}

enum PostScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'post'),
  message<String>('message', 'post'),
  image<String>('image', 'post'),
  date<DateTime>('date', 'post'),
  ownerId<int>('ownerId', 'post');

  const PostScalar(this.name, this.model);

  @override
  final String name;

  @override
  final String model;
}

class UserPostArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserPostArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PostWhereInput? where;

  final _i1.PrismaUnion<
    Iterable<_i2.PostOrderByWithRelationInput>,
    _i2.PostOrderByWithRelationInput
  >?
  orderBy;

  final _i2.PostWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PostScalar, Iterable<_i2.PostScalar>>? distinct;

  final _i2.PostSelect? select;

  final _i2.PostInclude? include;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'orderBy': orderBy,
    'cursor': cursor,
    'take': take,
    'skip': skip,
    'distinct': distinct,
    'select': select,
    'include': include,
  };
}

class UserCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountOutputTypeSelect({
    this.comment,
    this.followFollowFollowerIdTouser,
    this.followFollowFollowingIdTouser,
    this.like,
    this.post,
  });

  final bool? comment;

  final bool? followFollowFollowerIdTouser;

  final bool? followFollowFollowingIdTouser;

  final bool? like;

  final bool? post;

  @override
  Map<String, dynamic> toJson() => {
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
  };
}

class UserCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountArgs({this.select});

  final _i2.UserCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserInclude({
    this.comment,
    this.followFollowFollowerIdTouser,
    this.followFollowFollowingIdTouser,
    this.like,
    this.post,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.UserCommentArgs>? comment;

  final _i1.PrismaUnion<bool, _i2.UserFollowFollowFollowerIdTouserArgs>?
  followFollowFollowerIdTouser;

  final _i1.PrismaUnion<bool, _i2.UserFollowFollowFollowingIdTouserArgs>?
  followFollowFollowingIdTouser;

  final _i1.PrismaUnion<bool, _i2.UserLikeArgs>? like;

  final _i1.PrismaUnion<bool, _i2.UserPostArgs>? post;

  final _i1.PrismaUnion<bool, _i2.UserCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
    '_count': $count,
  };
}

class FollowSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowSelect({
    this.id,
    this.followerId,
    this.followingId,
    this.userFollowFollowerIdTouser,
    this.userFollowFollowingIdTouser,
  });

  final bool? id;

  final bool? followerId;

  final bool? followingId;

  final _i1.PrismaUnion<bool, _i2.FollowUserFollowFollowerIdTouserArgs>?
  userFollowFollowerIdTouser;

  final _i1.PrismaUnion<bool, _i2.FollowUserFollowFollowingIdTouserArgs>?
  userFollowFollowingIdTouser;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
    'user_follow_followerIdTouser': userFollowFollowerIdTouser,
    'user_follow_followingIdTouser': userFollowFollowingIdTouser,
  };
}

class UserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSelect({
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

  final bool? id;

  final bool? name;

  final bool? lastname;

  final bool? username;

  final bool? createdAt;

  final bool? passwordHash;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.UserCommentArgs>? comment;

  final _i1.PrismaUnion<bool, _i2.UserFollowFollowFollowerIdTouserArgs>?
  followFollowFollowerIdTouser;

  final _i1.PrismaUnion<bool, _i2.UserFollowFollowFollowingIdTouserArgs>?
  followFollowFollowingIdTouser;

  final _i1.PrismaUnion<bool, _i2.UserLikeArgs>? like;

  final _i1.PrismaUnion<bool, _i2.UserPostArgs>? post;

  final _i1.PrismaUnion<bool, _i2.UserCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
    '_count': $count,
  };
}

class LikeSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeSelect({this.id, this.userId, this.postId, this.post, this.user});

  final bool? id;

  final bool? userId;

  final bool? postId;

  final _i1.PrismaUnion<bool, _i2.LikePostArgs>? post;

  final _i1.PrismaUnion<bool, _i2.LikeUserArgs>? user;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
    'post': post,
    'user': user,
  };
}

class PostLikeArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.LikeWhereInput? where;

  final _i1.PrismaUnion<
    Iterable<_i2.LikeOrderByWithRelationInput>,
    _i2.LikeOrderByWithRelationInput
  >?
  orderBy;

  final _i2.LikeWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.LikeScalar, Iterable<_i2.LikeScalar>>? distinct;

  final _i2.LikeSelect? select;

  final _i2.LikeInclude? include;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'orderBy': orderBy,
    'cursor': cursor,
    'take': take,
    'skip': skip,
    'distinct': distinct,
    'select': select,
    'include': include,
  };
}

class PostUserArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUserArgs({this.select, this.include});

  final _i2.UserSelect? select;

  final _i2.UserInclude? include;

  @override
  Map<String, dynamic> toJson() => {'select': select, 'include': include};
}

class PostCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCountOutputTypeSelect({this.comment, this.like});

  final bool? comment;

  final bool? like;

  @override
  Map<String, dynamic> toJson() => {'comment': comment, 'like': like};
}

class PostCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCountArgs({this.select});

  final _i2.PostCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostInclude({this.comment, this.like, this.user, this.$count});

  final _i1.PrismaUnion<bool, _i2.PostCommentArgs>? comment;

  final _i1.PrismaUnion<bool, _i2.PostLikeArgs>? like;

  final _i1.PrismaUnion<bool, _i2.PostUserArgs>? user;

  final _i1.PrismaUnion<bool, _i2.PostCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
    'comment': comment,
    'like': like,
    'user': user,
    '_count': $count,
  };
}

class CommentPostArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentPostArgs({this.select, this.include});

  final _i2.PostSelect? select;

  final _i2.PostInclude? include;

  @override
  Map<String, dynamic> toJson() => {'select': select, 'include': include};
}

class CommentUserArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUserArgs({this.select, this.include});

  final _i2.UserSelect? select;

  final _i2.UserInclude? include;

  @override
  Map<String, dynamic> toJson() => {'select': select, 'include': include};
}

class CommentInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentInclude({this.post, this.user});

  final _i1.PrismaUnion<bool, _i2.CommentPostArgs>? post;

  final _i1.PrismaUnion<bool, _i2.CommentUserArgs>? user;

  @override
  Map<String, dynamic> toJson() => {'post': post, 'user': user};
}

class PostSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostSelect({
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

  final bool? id;

  final bool? message;

  final bool? image;

  final bool? date;

  final bool? ownerId;

  final _i1.PrismaUnion<bool, _i2.PostCommentArgs>? comment;

  final _i1.PrismaUnion<bool, _i2.PostLikeArgs>? like;

  final _i1.PrismaUnion<bool, _i2.PostUserArgs>? user;

  final _i1.PrismaUnion<bool, _i2.PostCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    'comment': comment,
    'like': like,
    'user': user,
    '_count': $count,
  };
}

class CommentSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentSelect({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
    this.post,
    this.user,
  });

  final bool? id;

  final bool? message;

  final bool? date;

  final bool? userId;

  final bool? postId;

  final _i1.PrismaUnion<bool, _i2.CommentPostArgs>? post;

  final _i1.PrismaUnion<bool, _i2.CommentUserArgs>? user;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
    'post': post,
    'user': user,
  };
}

class CommentCreateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateWithoutUserInput({
    required this.message,
    this.date,
    required this.post,
  });

  final String message;

  final DateTime? date;

  final _i2.PostCreateNestedOneWithoutCommentInput post;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'date': date,
    'post': post,
  };
}

class CommentUncheckedCreateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedCreateWithoutUserInput({
    this.id,
    required this.message,
    this.date,
    required this.postId,
  });

  final int? id;

  final String message;

  final DateTime? date;

  final int postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'postId': postId,
  };
}

class CommentCreateOrConnectWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateOrConnectWithoutUserInput({
    required this.where,
    required this.create,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.CommentCreateWithoutUserInput,
    _i2.CommentUncheckedCreateWithoutUserInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class CommentCreateManyUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateManyUserInput({
    this.id,
    required this.message,
    this.date,
    required this.postId,
  });

  final int? id;

  final String message;

  final DateTime? date;

  final int postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'postId': postId,
  };
}

class CommentCreateManyUserInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateManyUserInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<
    _i2.CommentCreateManyUserInput,
    Iterable<_i2.CommentCreateManyUserInput>
  >
  data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
    'data': data,
    'skipDuplicates': skipDuplicates,
  };
}

class CommentCreateNestedManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateNestedManyWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.CommentCreateWithoutUserInput,
    _i1.PrismaUnion<
      Iterable<_i2.CommentCreateWithoutUserInput>,
      _i1.PrismaUnion<
        _i2.CommentUncheckedCreateWithoutUserInput,
        Iterable<_i2.CommentUncheckedCreateWithoutUserInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.CommentCreateOrConnectWithoutUserInput,
    Iterable<_i2.CommentCreateOrConnectWithoutUserInput>
  >?
  connectOrCreate;

  final _i2.CommentCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'createMany': createMany,
    'connect': connect,
  };
}

class PostCreateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateWithoutUserInput({
    required this.message,
    this.image,
    this.date,
    this.comment,
    this.like,
  });

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final DateTime? date;

  final _i2.CommentCreateNestedManyWithoutPostInput? comment;

  final _i2.LikeCreateNestedManyWithoutPostInput? like;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'image': image,
    'date': date,
    'comment': comment,
    'like': like,
  };
}

class CommentUncheckedCreateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedCreateWithoutPostInput({
    this.id,
    required this.message,
    this.date,
    required this.userId,
  });

  final int? id;

  final String message;

  final DateTime? date;

  final int userId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
  };
}

class CommentCreateOrConnectWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateOrConnectWithoutPostInput({
    required this.where,
    required this.create,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.CommentCreateWithoutPostInput,
    _i2.CommentUncheckedCreateWithoutPostInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class CommentCreateManyPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateManyPostInput({
    this.id,
    required this.message,
    this.date,
    required this.userId,
  });

  final int? id;

  final String message;

  final DateTime? date;

  final int userId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
  };
}

class CommentCreateManyPostInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateManyPostInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<
    _i2.CommentCreateManyPostInput,
    Iterable<_i2.CommentCreateManyPostInput>
  >
  data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
    'data': data,
    'skipDuplicates': skipDuplicates,
  };
}

class CommentUncheckedCreateNestedManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedCreateNestedManyWithoutPostInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.CommentCreateWithoutPostInput,
    _i1.PrismaUnion<
      Iterable<_i2.CommentCreateWithoutPostInput>,
      _i1.PrismaUnion<
        _i2.CommentUncheckedCreateWithoutPostInput,
        Iterable<_i2.CommentUncheckedCreateWithoutPostInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.CommentCreateOrConnectWithoutPostInput,
    Iterable<_i2.CommentCreateOrConnectWithoutPostInput>
  >?
  connectOrCreate;

  final _i2.CommentCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'createMany': createMany,
    'connect': connect,
  };
}

class LikeUncheckedCreateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUncheckedCreateWithoutPostInput({this.id, required this.userId});

  final int? id;

  final int userId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'userId': userId};
}

class LikeCreateOrConnectWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeCreateOrConnectWithoutPostInput({
    required this.where,
    required this.create,
  });

  final _i2.LikeWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.LikeCreateWithoutPostInput,
    _i2.LikeUncheckedCreateWithoutPostInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class LikeCreateManyPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeCreateManyPostInput({this.id, required this.userId});

  final int? id;

  final int userId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'userId': userId};
}

class LikeCreateManyPostInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeCreateManyPostInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<
    _i2.LikeCreateManyPostInput,
    Iterable<_i2.LikeCreateManyPostInput>
  >
  data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
    'data': data,
    'skipDuplicates': skipDuplicates,
  };
}

class LikeUncheckedCreateNestedManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUncheckedCreateNestedManyWithoutPostInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.LikeCreateWithoutPostInput,
    _i1.PrismaUnion<
      Iterable<_i2.LikeCreateWithoutPostInput>,
      _i1.PrismaUnion<
        _i2.LikeUncheckedCreateWithoutPostInput,
        Iterable<_i2.LikeUncheckedCreateWithoutPostInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.LikeCreateOrConnectWithoutPostInput,
    Iterable<_i2.LikeCreateOrConnectWithoutPostInput>
  >?
  connectOrCreate;

  final _i2.LikeCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'createMany': createMany,
    'connect': connect,
  };
}

class PostUncheckedCreateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateWithoutUserInput({
    this.id,
    required this.message,
    this.image,
    this.date,
    this.comment,
    this.like,
  });

  final int? id;

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final DateTime? date;

  final _i2.CommentUncheckedCreateNestedManyWithoutPostInput? comment;

  final _i2.LikeUncheckedCreateNestedManyWithoutPostInput? like;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'comment': comment,
    'like': like,
  };
}

class PostCreateOrConnectWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateOrConnectWithoutUserInput({
    required this.where,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutUserInput,
    _i2.PostUncheckedCreateWithoutUserInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class PostCreateManyUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateManyUserInput({
    this.id,
    required this.message,
    this.image,
    this.date,
  });

  final int? id;

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final DateTime? date;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
  };
}

class PostCreateManyUserInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateManyUserInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<
    _i2.PostCreateManyUserInput,
    Iterable<_i2.PostCreateManyUserInput>
  >
  data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
    'data': data,
    'skipDuplicates': skipDuplicates,
  };
}

class PostCreateNestedManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateNestedManyWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutUserInput,
    _i1.PrismaUnion<
      Iterable<_i2.PostCreateWithoutUserInput>,
      _i1.PrismaUnion<
        _i2.PostUncheckedCreateWithoutUserInput,
        Iterable<_i2.PostUncheckedCreateWithoutUserInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.PostCreateOrConnectWithoutUserInput,
    Iterable<_i2.PostCreateOrConnectWithoutUserInput>
  >?
  connectOrCreate;

  final _i2.PostCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.PostWhereUniqueInput,
    Iterable<_i2.PostWhereUniqueInput>
  >?
  connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'createMany': createMany,
    'connect': connect,
  };
}

class UserCreateWithoutFollowFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateWithoutFollowFollowFollowerIdTouserInput({
    required this.name,
    required this.lastname,
    required this.username,
    this.createdAt,
    required this.passwordHash,
    required this.updatedAt,
    this.comment,
    this.followFollowFollowingIdTouser,
    this.like,
    this.post,
  });

  final String name;

  final String lastname;

  final String username;

  final DateTime? createdAt;

  final String passwordHash;

  final DateTime updatedAt;

  final _i2.CommentCreateNestedManyWithoutUserInput? comment;

  final _i2.FollowCreateNestedManyWithoutUserFollowFollowingIdTouserInput?
  followFollowFollowingIdTouser;

  final _i2.LikeCreateNestedManyWithoutUserInput? like;

  final _i2.PostCreateNestedManyWithoutUserInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
  };
}

class CommentUncheckedCreateNestedManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedCreateNestedManyWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.CommentCreateWithoutUserInput,
    _i1.PrismaUnion<
      Iterable<_i2.CommentCreateWithoutUserInput>,
      _i1.PrismaUnion<
        _i2.CommentUncheckedCreateWithoutUserInput,
        Iterable<_i2.CommentUncheckedCreateWithoutUserInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.CommentCreateOrConnectWithoutUserInput,
    Iterable<_i2.CommentCreateOrConnectWithoutUserInput>
  >?
  connectOrCreate;

  final _i2.CommentCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'createMany': createMany,
    'connect': connect,
  };
}

class FollowUncheckedCreateWithoutUserFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedCreateWithoutUserFollowFollowingIdTouserInput({
    this.id,
    required this.followerId,
  });

  final int? id;

  final int followerId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'followerId': followerId};
}

class FollowCreateOrConnectWithoutUserFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateOrConnectWithoutUserFollowFollowingIdTouserInput({
    required this.where,
    required this.create,
  });

  final _i2.FollowWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.FollowCreateWithoutUserFollowFollowingIdTouserInput,
    _i2.FollowUncheckedCreateWithoutUserFollowFollowingIdTouserInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class FollowCreateManyUserFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateManyUserFollowFollowingIdTouserInput({
    this.id,
    required this.followerId,
  });

  final int? id;

  final int followerId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'followerId': followerId};
}

class FollowCreateManyUserFollowFollowingIdTouserInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateManyUserFollowFollowingIdTouserInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<
    _i2.FollowCreateManyUserFollowFollowingIdTouserInput,
    Iterable<_i2.FollowCreateManyUserFollowFollowingIdTouserInput>
  >
  data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
    'data': data,
    'skipDuplicates': skipDuplicates,
  };
}

class FollowUncheckedCreateNestedManyWithoutUserFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedCreateNestedManyWithoutUserFollowFollowingIdTouserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.FollowCreateWithoutUserFollowFollowingIdTouserInput,
    _i1.PrismaUnion<
      Iterable<_i2.FollowCreateWithoutUserFollowFollowingIdTouserInput>,
      _i1.PrismaUnion<
        _i2.FollowUncheckedCreateWithoutUserFollowFollowingIdTouserInput,
        Iterable<
          _i2.FollowUncheckedCreateWithoutUserFollowFollowingIdTouserInput
        >
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.FollowCreateOrConnectWithoutUserFollowFollowingIdTouserInput,
    Iterable<_i2.FollowCreateOrConnectWithoutUserFollowFollowingIdTouserInput>
  >?
  connectOrCreate;

  final _i2.FollowCreateManyUserFollowFollowingIdTouserInputEnvelope?
  createMany;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'createMany': createMany,
    'connect': connect,
  };
}

class LikeUncheckedCreateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUncheckedCreateWithoutUserInput({this.id, required this.postId});

  final int? id;

  final int postId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'postId': postId};
}

class LikeCreateOrConnectWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeCreateOrConnectWithoutUserInput({
    required this.where,
    required this.create,
  });

  final _i2.LikeWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.LikeCreateWithoutUserInput,
    _i2.LikeUncheckedCreateWithoutUserInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class LikeCreateManyUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeCreateManyUserInput({this.id, required this.postId});

  final int? id;

  final int postId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'postId': postId};
}

class LikeCreateManyUserInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeCreateManyUserInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<
    _i2.LikeCreateManyUserInput,
    Iterable<_i2.LikeCreateManyUserInput>
  >
  data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
    'data': data,
    'skipDuplicates': skipDuplicates,
  };
}

class LikeUncheckedCreateNestedManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUncheckedCreateNestedManyWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.LikeCreateWithoutUserInput,
    _i1.PrismaUnion<
      Iterable<_i2.LikeCreateWithoutUserInput>,
      _i1.PrismaUnion<
        _i2.LikeUncheckedCreateWithoutUserInput,
        Iterable<_i2.LikeUncheckedCreateWithoutUserInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.LikeCreateOrConnectWithoutUserInput,
    Iterable<_i2.LikeCreateOrConnectWithoutUserInput>
  >?
  connectOrCreate;

  final _i2.LikeCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'createMany': createMany,
    'connect': connect,
  };
}

class PostUncheckedCreateNestedManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateNestedManyWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutUserInput,
    _i1.PrismaUnion<
      Iterable<_i2.PostCreateWithoutUserInput>,
      _i1.PrismaUnion<
        _i2.PostUncheckedCreateWithoutUserInput,
        Iterable<_i2.PostUncheckedCreateWithoutUserInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.PostCreateOrConnectWithoutUserInput,
    Iterable<_i2.PostCreateOrConnectWithoutUserInput>
  >?
  connectOrCreate;

  final _i2.PostCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.PostWhereUniqueInput,
    Iterable<_i2.PostWhereUniqueInput>
  >?
  connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'createMany': createMany,
    'connect': connect,
  };
}

class UserUncheckedCreateWithoutFollowFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateWithoutFollowFollowFollowerIdTouserInput({
    this.id,
    required this.name,
    required this.lastname,
    required this.username,
    this.createdAt,
    required this.passwordHash,
    required this.updatedAt,
    this.comment,
    this.followFollowFollowingIdTouser,
    this.like,
    this.post,
  });

  final int? id;

  final String name;

  final String lastname;

  final String username;

  final DateTime? createdAt;

  final String passwordHash;

  final DateTime updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutUserInput? comment;

  final _i2.FollowUncheckedCreateNestedManyWithoutUserFollowFollowingIdTouserInput?
  followFollowFollowingIdTouser;

  final _i2.LikeUncheckedCreateNestedManyWithoutUserInput? like;

  final _i2.PostUncheckedCreateNestedManyWithoutUserInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
  };
}

class UserWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereUniqueInput({
    this.id,
    this.username,
    this.AND,
    this.OR,
    this.NOT,
    this.name,
    this.lastname,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
    this.comment,
    this.followFollowFollowerIdTouser,
    this.followFollowFollowingIdTouser,
    this.like,
    this.post,
  });

  final int? id;

  final String? username;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? lastname;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.StringFilter, String>? passwordHash;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.CommentListRelationFilter? comment;

  final _i2.FollowListRelationFilter? followFollowFollowerIdTouser;

  final _i2.FollowListRelationFilter? followFollowFollowingIdTouser;

  final _i2.LikeListRelationFilter? like;

  final _i2.PostListRelationFilter? post;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'username': username,
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'name': name,
    'lastname': lastname,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
  };
}

class UserCreateOrConnectWithoutFollowFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateOrConnectWithoutFollowFollowFollowerIdTouserInput({
    required this.where,
    required this.create,
  });

  final _i2.UserWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutFollowFollowFollowerIdTouserInput,
    _i2.UserUncheckedCreateWithoutFollowFollowFollowerIdTouserInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class UserCreateNestedOneWithoutFollowFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateNestedOneWithoutFollowFollowFollowerIdTouserInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutFollowFollowFollowerIdTouserInput,
    _i2.UserUncheckedCreateWithoutFollowFollowFollowerIdTouserInput
  >?
  create;

  final _i2.UserCreateOrConnectWithoutFollowFollowFollowerIdTouserInput?
  connectOrCreate;

  final _i2.UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'connect': connect,
  };
}

class FollowCreateWithoutUserFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateWithoutUserFollowFollowingIdTouserInput({
    required this.userFollowFollowerIdTouser,
  });

  final _i2.UserCreateNestedOneWithoutFollowFollowFollowerIdTouserInput
  userFollowFollowerIdTouser;

  @override
  Map<String, dynamic> toJson() => {
    'user_follow_followerIdTouser': userFollowFollowerIdTouser,
  };
}

class FollowCreateNestedManyWithoutUserFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateNestedManyWithoutUserFollowFollowingIdTouserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.FollowCreateWithoutUserFollowFollowingIdTouserInput,
    _i1.PrismaUnion<
      Iterable<_i2.FollowCreateWithoutUserFollowFollowingIdTouserInput>,
      _i1.PrismaUnion<
        _i2.FollowUncheckedCreateWithoutUserFollowFollowingIdTouserInput,
        Iterable<
          _i2.FollowUncheckedCreateWithoutUserFollowFollowingIdTouserInput
        >
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.FollowCreateOrConnectWithoutUserFollowFollowingIdTouserInput,
    Iterable<_i2.FollowCreateOrConnectWithoutUserFollowFollowingIdTouserInput>
  >?
  connectOrCreate;

  final _i2.FollowCreateManyUserFollowFollowingIdTouserInputEnvelope?
  createMany;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'createMany': createMany,
    'connect': connect,
  };
}

class UserCreateWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateWithoutCommentInput({
    required this.name,
    required this.lastname,
    required this.username,
    this.createdAt,
    required this.passwordHash,
    required this.updatedAt,
    this.followFollowFollowerIdTouser,
    this.followFollowFollowingIdTouser,
    this.like,
    this.post,
  });

  final String name;

  final String lastname;

  final String username;

  final DateTime? createdAt;

  final String passwordHash;

  final DateTime updatedAt;

  final _i2.FollowCreateNestedManyWithoutUserFollowFollowerIdTouserInput?
  followFollowFollowerIdTouser;

  final _i2.FollowCreateNestedManyWithoutUserFollowFollowingIdTouserInput?
  followFollowFollowingIdTouser;

  final _i2.LikeCreateNestedManyWithoutUserInput? like;

  final _i2.PostCreateNestedManyWithoutUserInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
  };
}

class FollowUncheckedCreateWithoutUserFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedCreateWithoutUserFollowFollowerIdTouserInput({
    this.id,
    required this.followingId,
  });

  final int? id;

  final int followingId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'followingId': followingId};
}

class FollowCreateOrConnectWithoutUserFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateOrConnectWithoutUserFollowFollowerIdTouserInput({
    required this.where,
    required this.create,
  });

  final _i2.FollowWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.FollowCreateWithoutUserFollowFollowerIdTouserInput,
    _i2.FollowUncheckedCreateWithoutUserFollowFollowerIdTouserInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class FollowCreateManyUserFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateManyUserFollowFollowerIdTouserInput({
    this.id,
    required this.followingId,
  });

  final int? id;

  final int followingId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'followingId': followingId};
}

class FollowCreateManyUserFollowFollowerIdTouserInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateManyUserFollowFollowerIdTouserInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<
    _i2.FollowCreateManyUserFollowFollowerIdTouserInput,
    Iterable<_i2.FollowCreateManyUserFollowFollowerIdTouserInput>
  >
  data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
    'data': data,
    'skipDuplicates': skipDuplicates,
  };
}

class FollowUncheckedCreateNestedManyWithoutUserFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedCreateNestedManyWithoutUserFollowFollowerIdTouserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.FollowCreateWithoutUserFollowFollowerIdTouserInput,
    _i1.PrismaUnion<
      Iterable<_i2.FollowCreateWithoutUserFollowFollowerIdTouserInput>,
      _i1.PrismaUnion<
        _i2.FollowUncheckedCreateWithoutUserFollowFollowerIdTouserInput,
        Iterable<
          _i2.FollowUncheckedCreateWithoutUserFollowFollowerIdTouserInput
        >
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.FollowCreateOrConnectWithoutUserFollowFollowerIdTouserInput,
    Iterable<_i2.FollowCreateOrConnectWithoutUserFollowFollowerIdTouserInput>
  >?
  connectOrCreate;

  final _i2.FollowCreateManyUserFollowFollowerIdTouserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'createMany': createMany,
    'connect': connect,
  };
}

class UserUncheckedCreateWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateWithoutCommentInput({
    this.id,
    required this.name,
    required this.lastname,
    required this.username,
    this.createdAt,
    required this.passwordHash,
    required this.updatedAt,
    this.followFollowFollowerIdTouser,
    this.followFollowFollowingIdTouser,
    this.like,
    this.post,
  });

  final int? id;

  final String name;

  final String lastname;

  final String username;

  final DateTime? createdAt;

  final String passwordHash;

  final DateTime updatedAt;

  final _i2.FollowUncheckedCreateNestedManyWithoutUserFollowFollowerIdTouserInput?
  followFollowFollowerIdTouser;

  final _i2.FollowUncheckedCreateNestedManyWithoutUserFollowFollowingIdTouserInput?
  followFollowFollowingIdTouser;

  final _i2.LikeUncheckedCreateNestedManyWithoutUserInput? like;

  final _i2.PostUncheckedCreateNestedManyWithoutUserInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
  };
}

class UserCreateOrConnectWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateOrConnectWithoutCommentInput({
    required this.where,
    required this.create,
  });

  final _i2.UserWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutCommentInput,
    _i2.UserUncheckedCreateWithoutCommentInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class UserCreateNestedOneWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateNestedOneWithoutCommentInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutCommentInput,
    _i2.UserUncheckedCreateWithoutCommentInput
  >?
  create;

  final _i2.UserCreateOrConnectWithoutCommentInput? connectOrCreate;

  final _i2.UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'connect': connect,
  };
}

class CommentCreateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateWithoutPostInput({
    required this.message,
    this.date,
    required this.user,
  });

  final String message;

  final DateTime? date;

  final _i2.UserCreateNestedOneWithoutCommentInput user;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'date': date,
    'user': user,
  };
}

class CommentCreateNestedManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateNestedManyWithoutPostInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.CommentCreateWithoutPostInput,
    _i1.PrismaUnion<
      Iterable<_i2.CommentCreateWithoutPostInput>,
      _i1.PrismaUnion<
        _i2.CommentUncheckedCreateWithoutPostInput,
        Iterable<_i2.CommentUncheckedCreateWithoutPostInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.CommentCreateOrConnectWithoutPostInput,
    Iterable<_i2.CommentCreateOrConnectWithoutPostInput>
  >?
  connectOrCreate;

  final _i2.CommentCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'createMany': createMany,
    'connect': connect,
  };
}

class UserCreateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateWithoutPostInput({
    required this.name,
    required this.lastname,
    required this.username,
    this.createdAt,
    required this.passwordHash,
    required this.updatedAt,
    this.comment,
    this.followFollowFollowerIdTouser,
    this.followFollowFollowingIdTouser,
    this.like,
  });

  final String name;

  final String lastname;

  final String username;

  final DateTime? createdAt;

  final String passwordHash;

  final DateTime updatedAt;

  final _i2.CommentCreateNestedManyWithoutUserInput? comment;

  final _i2.FollowCreateNestedManyWithoutUserFollowFollowerIdTouserInput?
  followFollowFollowerIdTouser;

  final _i2.FollowCreateNestedManyWithoutUserFollowFollowingIdTouserInput?
  followFollowFollowingIdTouser;

  final _i2.LikeCreateNestedManyWithoutUserInput? like;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
  };
}

class UserUncheckedCreateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateWithoutPostInput({
    this.id,
    required this.name,
    required this.lastname,
    required this.username,
    this.createdAt,
    required this.passwordHash,
    required this.updatedAt,
    this.comment,
    this.followFollowFollowerIdTouser,
    this.followFollowFollowingIdTouser,
    this.like,
  });

  final int? id;

  final String name;

  final String lastname;

  final String username;

  final DateTime? createdAt;

  final String passwordHash;

  final DateTime updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutUserInput? comment;

  final _i2.FollowUncheckedCreateNestedManyWithoutUserFollowFollowerIdTouserInput?
  followFollowFollowerIdTouser;

  final _i2.FollowUncheckedCreateNestedManyWithoutUserFollowFollowingIdTouserInput?
  followFollowFollowingIdTouser;

  final _i2.LikeUncheckedCreateNestedManyWithoutUserInput? like;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
  };
}

class UserCreateOrConnectWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateOrConnectWithoutPostInput({
    required this.where,
    required this.create,
  });

  final _i2.UserWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutPostInput,
    _i2.UserUncheckedCreateWithoutPostInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class UserCreateNestedOneWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateNestedOneWithoutPostInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutPostInput,
    _i2.UserUncheckedCreateWithoutPostInput
  >?
  create;

  final _i2.UserCreateOrConnectWithoutPostInput? connectOrCreate;

  final _i2.UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'connect': connect,
  };
}

class PostCreateWithoutLikeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateWithoutLikeInput({
    required this.message,
    this.image,
    this.date,
    this.comment,
    required this.user,
  });

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final DateTime? date;

  final _i2.CommentCreateNestedManyWithoutPostInput? comment;

  final _i2.UserCreateNestedOneWithoutPostInput user;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'image': image,
    'date': date,
    'comment': comment,
    'user': user,
  };
}

class PostUncheckedCreateWithoutLikeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateWithoutLikeInput({
    this.id,
    required this.message,
    this.image,
    this.date,
    required this.ownerId,
    this.comment,
  });

  final int? id;

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final DateTime? date;

  final int ownerId;

  final _i2.CommentUncheckedCreateNestedManyWithoutPostInput? comment;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    'comment': comment,
  };
}

class PostCreateOrConnectWithoutLikeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateOrConnectWithoutLikeInput({
    required this.where,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutLikeInput,
    _i2.PostUncheckedCreateWithoutLikeInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class PostCreateNestedOneWithoutLikeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateNestedOneWithoutLikeInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutLikeInput,
    _i2.PostUncheckedCreateWithoutLikeInput
  >?
  create;

  final _i2.PostCreateOrConnectWithoutLikeInput? connectOrCreate;

  final _i2.PostWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'connect': connect,
  };
}

class LikeCreateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeCreateWithoutUserInput({required this.post});

  final _i2.PostCreateNestedOneWithoutLikeInput post;

  @override
  Map<String, dynamic> toJson() => {'post': post};
}

class LikeCreateNestedManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeCreateNestedManyWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.LikeCreateWithoutUserInput,
    _i1.PrismaUnion<
      Iterable<_i2.LikeCreateWithoutUserInput>,
      _i1.PrismaUnion<
        _i2.LikeUncheckedCreateWithoutUserInput,
        Iterable<_i2.LikeUncheckedCreateWithoutUserInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.LikeCreateOrConnectWithoutUserInput,
    Iterable<_i2.LikeCreateOrConnectWithoutUserInput>
  >?
  connectOrCreate;

  final _i2.LikeCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'createMany': createMany,
    'connect': connect,
  };
}

class UserCreateWithoutFollowFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateWithoutFollowFollowFollowingIdTouserInput({
    required this.name,
    required this.lastname,
    required this.username,
    this.createdAt,
    required this.passwordHash,
    required this.updatedAt,
    this.comment,
    this.followFollowFollowerIdTouser,
    this.like,
    this.post,
  });

  final String name;

  final String lastname;

  final String username;

  final DateTime? createdAt;

  final String passwordHash;

  final DateTime updatedAt;

  final _i2.CommentCreateNestedManyWithoutUserInput? comment;

  final _i2.FollowCreateNestedManyWithoutUserFollowFollowerIdTouserInput?
  followFollowFollowerIdTouser;

  final _i2.LikeCreateNestedManyWithoutUserInput? like;

  final _i2.PostCreateNestedManyWithoutUserInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'like': like,
    'post': post,
  };
}

class UserUncheckedCreateWithoutFollowFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateWithoutFollowFollowFollowingIdTouserInput({
    this.id,
    required this.name,
    required this.lastname,
    required this.username,
    this.createdAt,
    required this.passwordHash,
    required this.updatedAt,
    this.comment,
    this.followFollowFollowerIdTouser,
    this.like,
    this.post,
  });

  final int? id;

  final String name;

  final String lastname;

  final String username;

  final DateTime? createdAt;

  final String passwordHash;

  final DateTime updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutUserInput? comment;

  final _i2.FollowUncheckedCreateNestedManyWithoutUserFollowFollowerIdTouserInput?
  followFollowFollowerIdTouser;

  final _i2.LikeUncheckedCreateNestedManyWithoutUserInput? like;

  final _i2.PostUncheckedCreateNestedManyWithoutUserInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'like': like,
    'post': post,
  };
}

class UserCreateOrConnectWithoutFollowFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateOrConnectWithoutFollowFollowFollowingIdTouserInput({
    required this.where,
    required this.create,
  });

  final _i2.UserWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutFollowFollowFollowingIdTouserInput,
    _i2.UserUncheckedCreateWithoutFollowFollowFollowingIdTouserInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class UserCreateNestedOneWithoutFollowFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateNestedOneWithoutFollowFollowFollowingIdTouserInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutFollowFollowFollowingIdTouserInput,
    _i2.UserUncheckedCreateWithoutFollowFollowFollowingIdTouserInput
  >?
  create;

  final _i2.UserCreateOrConnectWithoutFollowFollowFollowingIdTouserInput?
  connectOrCreate;

  final _i2.UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'connect': connect,
  };
}

class FollowCreateWithoutUserFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateWithoutUserFollowFollowerIdTouserInput({
    required this.userFollowFollowingIdTouser,
  });

  final _i2.UserCreateNestedOneWithoutFollowFollowFollowingIdTouserInput
  userFollowFollowingIdTouser;

  @override
  Map<String, dynamic> toJson() => {
    'user_follow_followingIdTouser': userFollowFollowingIdTouser,
  };
}

class FollowCreateNestedManyWithoutUserFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateNestedManyWithoutUserFollowFollowerIdTouserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.FollowCreateWithoutUserFollowFollowerIdTouserInput,
    _i1.PrismaUnion<
      Iterable<_i2.FollowCreateWithoutUserFollowFollowerIdTouserInput>,
      _i1.PrismaUnion<
        _i2.FollowUncheckedCreateWithoutUserFollowFollowerIdTouserInput,
        Iterable<
          _i2.FollowUncheckedCreateWithoutUserFollowFollowerIdTouserInput
        >
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.FollowCreateOrConnectWithoutUserFollowFollowerIdTouserInput,
    Iterable<_i2.FollowCreateOrConnectWithoutUserFollowFollowerIdTouserInput>
  >?
  connectOrCreate;

  final _i2.FollowCreateManyUserFollowFollowerIdTouserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'createMany': createMany,
    'connect': connect,
  };
}

class UserCreateWithoutLikeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateWithoutLikeInput({
    required this.name,
    required this.lastname,
    required this.username,
    this.createdAt,
    required this.passwordHash,
    required this.updatedAt,
    this.comment,
    this.followFollowFollowerIdTouser,
    this.followFollowFollowingIdTouser,
    this.post,
  });

  final String name;

  final String lastname;

  final String username;

  final DateTime? createdAt;

  final String passwordHash;

  final DateTime updatedAt;

  final _i2.CommentCreateNestedManyWithoutUserInput? comment;

  final _i2.FollowCreateNestedManyWithoutUserFollowFollowerIdTouserInput?
  followFollowFollowerIdTouser;

  final _i2.FollowCreateNestedManyWithoutUserFollowFollowingIdTouserInput?
  followFollowFollowingIdTouser;

  final _i2.PostCreateNestedManyWithoutUserInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'post': post,
  };
}

class UserUncheckedCreateWithoutLikeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateWithoutLikeInput({
    this.id,
    required this.name,
    required this.lastname,
    required this.username,
    this.createdAt,
    required this.passwordHash,
    required this.updatedAt,
    this.comment,
    this.followFollowFollowerIdTouser,
    this.followFollowFollowingIdTouser,
    this.post,
  });

  final int? id;

  final String name;

  final String lastname;

  final String username;

  final DateTime? createdAt;

  final String passwordHash;

  final DateTime updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutUserInput? comment;

  final _i2.FollowUncheckedCreateNestedManyWithoutUserFollowFollowerIdTouserInput?
  followFollowFollowerIdTouser;

  final _i2.FollowUncheckedCreateNestedManyWithoutUserFollowFollowingIdTouserInput?
  followFollowFollowingIdTouser;

  final _i2.PostUncheckedCreateNestedManyWithoutUserInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'post': post,
  };
}

class UserCreateOrConnectWithoutLikeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateOrConnectWithoutLikeInput({
    required this.where,
    required this.create,
  });

  final _i2.UserWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutLikeInput,
    _i2.UserUncheckedCreateWithoutLikeInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class UserCreateNestedOneWithoutLikeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateNestedOneWithoutLikeInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutLikeInput,
    _i2.UserUncheckedCreateWithoutLikeInput
  >?
  create;

  final _i2.UserCreateOrConnectWithoutLikeInput? connectOrCreate;

  final _i2.UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'connect': connect,
  };
}

class LikeCreateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeCreateWithoutPostInput({required this.user});

  final _i2.UserCreateNestedOneWithoutLikeInput user;

  @override
  Map<String, dynamic> toJson() => {'user': user};
}

class LikeCreateNestedManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeCreateNestedManyWithoutPostInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.LikeCreateWithoutPostInput,
    _i1.PrismaUnion<
      Iterable<_i2.LikeCreateWithoutPostInput>,
      _i1.PrismaUnion<
        _i2.LikeUncheckedCreateWithoutPostInput,
        Iterable<_i2.LikeUncheckedCreateWithoutPostInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.LikeCreateOrConnectWithoutPostInput,
    Iterable<_i2.LikeCreateOrConnectWithoutPostInput>
  >?
  connectOrCreate;

  final _i2.LikeCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'createMany': createMany,
    'connect': connect,
  };
}

class PostCreateWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateWithoutCommentInput({
    required this.message,
    this.image,
    this.date,
    this.like,
    required this.user,
  });

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final DateTime? date;

  final _i2.LikeCreateNestedManyWithoutPostInput? like;

  final _i2.UserCreateNestedOneWithoutPostInput user;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'image': image,
    'date': date,
    'like': like,
    'user': user,
  };
}

class PostUncheckedCreateWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateWithoutCommentInput({
    this.id,
    required this.message,
    this.image,
    this.date,
    required this.ownerId,
    this.like,
  });

  final int? id;

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final DateTime? date;

  final int ownerId;

  final _i2.LikeUncheckedCreateNestedManyWithoutPostInput? like;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    'like': like,
  };
}

class PostCreateOrConnectWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateOrConnectWithoutCommentInput({
    required this.where,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutCommentInput,
    _i2.PostUncheckedCreateWithoutCommentInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class PostCreateNestedOneWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateNestedOneWithoutCommentInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutCommentInput,
    _i2.PostUncheckedCreateWithoutCommentInput
  >?
  create;

  final _i2.PostCreateOrConnectWithoutCommentInput? connectOrCreate;

  final _i2.PostWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'connect': connect,
  };
}

class CommentCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateInput({
    required this.message,
    this.date,
    required this.post,
    required this.user,
  });

  final String message;

  final DateTime? date;

  final _i2.PostCreateNestedOneWithoutCommentInput post;

  final _i2.UserCreateNestedOneWithoutCommentInput user;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'date': date,
    'post': post,
    'user': user,
  };
}

class CommentUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedCreateInput({
    this.id,
    required this.message,
    this.date,
    required this.userId,
    required this.postId,
  });

  final int? id;

  final String message;

  final DateTime? date;

  final int userId;

  final int postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
  };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class CommentCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateManyInput({
    this.id,
    required this.message,
    this.date,
    required this.userId,
    required this.postId,
  });

  final int? id;

  final String message;

  final DateTime? date;

  final int userId;

  final int postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
  };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class DateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFieldUpdateOperationsInput({this.set});

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableStringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableStringFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<String, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class CommentUpdateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateWithoutUserInput({this.message, this.date, this.post});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i2.PostUpdateOneRequiredWithoutCommentNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'date': date,
    'post': post,
  };
}

class IntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
    'set': set,
    'increment': increment,
    'decrement': decrement,
    'multiply': multiply,
    'divide': divide,
  };
}

class CommentUncheckedUpdateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateWithoutUserInput({
    this.id,
    this.message,
    this.date,
    this.postId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'postId': postId,
  };
}

class CommentUpsertWithWhereUniqueWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpsertWithWhereUniqueWithoutUserInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.CommentUpdateWithoutUserInput,
    _i2.CommentUncheckedUpdateWithoutUserInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.CommentCreateWithoutUserInput,
    _i2.CommentUncheckedCreateWithoutUserInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'update': update,
    'create': create,
  };
}

class CommentUpdateWithWhereUniqueWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateWithWhereUniqueWithoutUserInput({
    required this.where,
    required this.data,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.CommentUpdateWithoutUserInput,
    _i2.CommentUncheckedUpdateWithoutUserInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class CommentScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
  });

  final _i1.PrismaUnion<
    _i2.CommentScalarWhereInput,
    Iterable<_i2.CommentScalarWhereInput>
  >?
  AND;

  final Iterable<_i2.CommentScalarWhereInput>? OR;

  final _i1.PrismaUnion<
    _i2.CommentScalarWhereInput,
    Iterable<_i2.CommentScalarWhereInput>
  >?
  NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? message;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? date;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? postId;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
  };
}

class CommentUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateManyMutationInput({this.message, this.date});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  @override
  Map<String, dynamic> toJson() => {'message': message, 'date': date};
}

class CommentUncheckedUpdateManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateManyWithoutUserInput({
    this.id,
    this.message,
    this.date,
    this.postId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'postId': postId,
  };
}

class CommentUpdateManyWithWhereWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateManyWithWhereWithoutUserInput({
    required this.where,
    required this.data,
  });

  final _i2.CommentScalarWhereInput where;

  final _i1.PrismaUnion<
    _i2.CommentUpdateManyMutationInput,
    _i2.CommentUncheckedUpdateManyWithoutUserInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class CommentUpdateManyWithoutUserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateManyWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
    _i2.CommentCreateWithoutUserInput,
    _i1.PrismaUnion<
      Iterable<_i2.CommentCreateWithoutUserInput>,
      _i1.PrismaUnion<
        _i2.CommentUncheckedCreateWithoutUserInput,
        Iterable<_i2.CommentUncheckedCreateWithoutUserInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.CommentCreateOrConnectWithoutUserInput,
    Iterable<_i2.CommentCreateOrConnectWithoutUserInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.CommentUpsertWithWhereUniqueWithoutUserInput,
    Iterable<_i2.CommentUpsertWithWhereUniqueWithoutUserInput>
  >?
  upsert;

  final _i2.CommentCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  set;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  disconnect;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  delete;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  connect;

  final _i1.PrismaUnion<
    _i2.CommentUpdateWithWhereUniqueWithoutUserInput,
    Iterable<_i2.CommentUpdateWithWhereUniqueWithoutUserInput>
  >?
  update;

  final _i1.PrismaUnion<
    _i2.CommentUpdateManyWithWhereWithoutUserInput,
    Iterable<_i2.CommentUpdateManyWithWhereWithoutUserInput>
  >?
  updateMany;

  final _i1.PrismaUnion<
    _i2.CommentScalarWhereInput,
    Iterable<_i2.CommentScalarWhereInput>
  >?
  deleteMany;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'createMany': createMany,
    'set': set,
    'disconnect': disconnect,
    'delete': delete,
    'connect': connect,
    'update': update,
    'updateMany': updateMany,
    'deleteMany': deleteMany,
  };
}

class PostUpdateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithoutUserInput({
    this.message,
    this.image,
    this.date,
    this.comment,
    this.like,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i2.CommentUpdateManyWithoutPostNestedInput? comment;

  final _i2.LikeUpdateManyWithoutPostNestedInput? like;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'image': image,
    'date': date,
    'comment': comment,
    'like': like,
  };
}

class CommentUncheckedUpdateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateWithoutPostInput({
    this.id,
    this.message,
    this.date,
    this.userId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
  };
}

class CommentUpdateWithWhereUniqueWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateWithWhereUniqueWithoutPostInput({
    required this.where,
    required this.data,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.CommentUpdateWithoutPostInput,
    _i2.CommentUncheckedUpdateWithoutPostInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class CommentUncheckedUpdateManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateManyWithoutPostInput({
    this.id,
    this.message,
    this.date,
    this.userId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
  };
}

class CommentUpdateManyWithWhereWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateManyWithWhereWithoutPostInput({
    required this.where,
    required this.data,
  });

  final _i2.CommentScalarWhereInput where;

  final _i1.PrismaUnion<
    _i2.CommentUpdateManyMutationInput,
    _i2.CommentUncheckedUpdateManyWithoutPostInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class CommentUncheckedUpdateManyWithoutPostNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateManyWithoutPostNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
    _i2.CommentCreateWithoutPostInput,
    _i1.PrismaUnion<
      Iterable<_i2.CommentCreateWithoutPostInput>,
      _i1.PrismaUnion<
        _i2.CommentUncheckedCreateWithoutPostInput,
        Iterable<_i2.CommentUncheckedCreateWithoutPostInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.CommentCreateOrConnectWithoutPostInput,
    Iterable<_i2.CommentCreateOrConnectWithoutPostInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.CommentUpsertWithWhereUniqueWithoutPostInput,
    Iterable<_i2.CommentUpsertWithWhereUniqueWithoutPostInput>
  >?
  upsert;

  final _i2.CommentCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  set;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  disconnect;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  delete;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  connect;

  final _i1.PrismaUnion<
    _i2.CommentUpdateWithWhereUniqueWithoutPostInput,
    Iterable<_i2.CommentUpdateWithWhereUniqueWithoutPostInput>
  >?
  update;

  final _i1.PrismaUnion<
    _i2.CommentUpdateManyWithWhereWithoutPostInput,
    Iterable<_i2.CommentUpdateManyWithWhereWithoutPostInput>
  >?
  updateMany;

  final _i1.PrismaUnion<
    _i2.CommentScalarWhereInput,
    Iterable<_i2.CommentScalarWhereInput>
  >?
  deleteMany;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'createMany': createMany,
    'set': set,
    'disconnect': disconnect,
    'delete': delete,
    'connect': connect,
    'update': update,
    'updateMany': updateMany,
    'deleteMany': deleteMany,
  };
}

class LikeUncheckedUpdateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUncheckedUpdateWithoutPostInput({this.id, this.userId});

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'userId': userId};
}

class LikeUpdateWithWhereUniqueWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUpdateWithWhereUniqueWithoutPostInput({
    required this.where,
    required this.data,
  });

  final _i2.LikeWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.LikeUpdateWithoutPostInput,
    _i2.LikeUncheckedUpdateWithoutPostInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class LikeScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.userId,
    this.postId,
  });

  final _i1.PrismaUnion<
    _i2.LikeScalarWhereInput,
    Iterable<_i2.LikeScalarWhereInput>
  >?
  AND;

  final Iterable<_i2.LikeScalarWhereInput>? OR;

  final _i1.PrismaUnion<
    _i2.LikeScalarWhereInput,
    Iterable<_i2.LikeScalarWhereInput>
  >?
  NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? postId;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUpdateManyMutationInput();

  @override
  Map<String, dynamic> toJson() => {};
}

class LikeUncheckedUpdateManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUncheckedUpdateManyWithoutPostInput({this.id, this.userId});

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'userId': userId};
}

class LikeUpdateManyWithWhereWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUpdateManyWithWhereWithoutPostInput({
    required this.where,
    required this.data,
  });

  final _i2.LikeScalarWhereInput where;

  final _i1.PrismaUnion<
    _i2.LikeUpdateManyMutationInput,
    _i2.LikeUncheckedUpdateManyWithoutPostInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class LikeUncheckedUpdateManyWithoutPostNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUncheckedUpdateManyWithoutPostNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
    _i2.LikeCreateWithoutPostInput,
    _i1.PrismaUnion<
      Iterable<_i2.LikeCreateWithoutPostInput>,
      _i1.PrismaUnion<
        _i2.LikeUncheckedCreateWithoutPostInput,
        Iterable<_i2.LikeUncheckedCreateWithoutPostInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.LikeCreateOrConnectWithoutPostInput,
    Iterable<_i2.LikeCreateOrConnectWithoutPostInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.LikeUpsertWithWhereUniqueWithoutPostInput,
    Iterable<_i2.LikeUpsertWithWhereUniqueWithoutPostInput>
  >?
  upsert;

  final _i2.LikeCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  set;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  disconnect;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  delete;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  connect;

  final _i1.PrismaUnion<
    _i2.LikeUpdateWithWhereUniqueWithoutPostInput,
    Iterable<_i2.LikeUpdateWithWhereUniqueWithoutPostInput>
  >?
  update;

  final _i1.PrismaUnion<
    _i2.LikeUpdateManyWithWhereWithoutPostInput,
    Iterable<_i2.LikeUpdateManyWithWhereWithoutPostInput>
  >?
  updateMany;

  final _i1.PrismaUnion<
    _i2.LikeScalarWhereInput,
    Iterable<_i2.LikeScalarWhereInput>
  >?
  deleteMany;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'createMany': createMany,
    'set': set,
    'disconnect': disconnect,
    'delete': delete,
    'connect': connect,
    'update': update,
    'updateMany': updateMany,
    'deleteMany': deleteMany,
  };
}

class PostUncheckedUpdateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateWithoutUserInput({
    this.id,
    this.message,
    this.image,
    this.date,
    this.comment,
    this.like,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i2.CommentUncheckedUpdateManyWithoutPostNestedInput? comment;

  final _i2.LikeUncheckedUpdateManyWithoutPostNestedInput? like;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'comment': comment,
    'like': like,
  };
}

class PostUpsertWithWhereUniqueWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpsertWithWhereUniqueWithoutUserInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.PostUpdateWithoutUserInput,
    _i2.PostUncheckedUpdateWithoutUserInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutUserInput,
    _i2.PostUncheckedCreateWithoutUserInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'update': update,
    'create': create,
  };
}

class PostUpdateWithWhereUniqueWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithWhereUniqueWithoutUserInput({
    required this.where,
    required this.data,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.PostUpdateWithoutUserInput,
    _i2.PostUncheckedUpdateWithoutUserInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class PostScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
  });

  final _i1.PrismaUnion<
    _i2.PostScalarWhereInput,
    Iterable<_i2.PostScalarWhereInput>
  >?
  AND;

  final Iterable<_i2.PostScalarWhereInput>? OR;

  final _i1.PrismaUnion<
    _i2.PostScalarWhereInput,
    Iterable<_i2.PostScalarWhereInput>
  >?
  NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? message;

  final _i1.PrismaUnion<
    _i2.StringNullableFilter,
    _i1.PrismaUnion<String, _i1.PrismaNull>
  >?
  image;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? date;

  final _i1.PrismaUnion<_i2.IntFilter, int>? ownerId;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
  };
}

class PostUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateManyMutationInput({this.message, this.image, this.date});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'image': image,
    'date': date,
  };
}

class PostUncheckedUpdateManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateManyWithoutUserInput({
    this.id,
    this.message,
    this.image,
    this.date,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
  };
}

class PostUpdateManyWithWhereWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateManyWithWhereWithoutUserInput({
    required this.where,
    required this.data,
  });

  final _i2.PostScalarWhereInput where;

  final _i1.PrismaUnion<
    _i2.PostUpdateManyMutationInput,
    _i2.PostUncheckedUpdateManyWithoutUserInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class PostUpdateManyWithoutUserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateManyWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutUserInput,
    _i1.PrismaUnion<
      Iterable<_i2.PostCreateWithoutUserInput>,
      _i1.PrismaUnion<
        _i2.PostUncheckedCreateWithoutUserInput,
        Iterable<_i2.PostUncheckedCreateWithoutUserInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.PostCreateOrConnectWithoutUserInput,
    Iterable<_i2.PostCreateOrConnectWithoutUserInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.PostUpsertWithWhereUniqueWithoutUserInput,
    Iterable<_i2.PostUpsertWithWhereUniqueWithoutUserInput>
  >?
  upsert;

  final _i2.PostCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.PostWhereUniqueInput,
    Iterable<_i2.PostWhereUniqueInput>
  >?
  set;

  final _i1.PrismaUnion<
    _i2.PostWhereUniqueInput,
    Iterable<_i2.PostWhereUniqueInput>
  >?
  disconnect;

  final _i1.PrismaUnion<
    _i2.PostWhereUniqueInput,
    Iterable<_i2.PostWhereUniqueInput>
  >?
  delete;

  final _i1.PrismaUnion<
    _i2.PostWhereUniqueInput,
    Iterable<_i2.PostWhereUniqueInput>
  >?
  connect;

  final _i1.PrismaUnion<
    _i2.PostUpdateWithWhereUniqueWithoutUserInput,
    Iterable<_i2.PostUpdateWithWhereUniqueWithoutUserInput>
  >?
  update;

  final _i1.PrismaUnion<
    _i2.PostUpdateManyWithWhereWithoutUserInput,
    Iterable<_i2.PostUpdateManyWithWhereWithoutUserInput>
  >?
  updateMany;

  final _i1.PrismaUnion<
    _i2.PostScalarWhereInput,
    Iterable<_i2.PostScalarWhereInput>
  >?
  deleteMany;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'createMany': createMany,
    'set': set,
    'disconnect': disconnect,
    'delete': delete,
    'connect': connect,
    'update': update,
    'updateMany': updateMany,
    'deleteMany': deleteMany,
  };
}

class UserUpdateWithoutFollowFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateWithoutFollowFollowFollowerIdTouserInput({
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
    this.comment,
    this.followFollowFollowingIdTouser,
    this.like,
    this.post,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  createdAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
  passwordHash;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  updatedAt;

  final _i2.CommentUpdateManyWithoutUserNestedInput? comment;

  final _i2.FollowUpdateManyWithoutUserFollowFollowingIdTouserNestedInput?
  followFollowFollowingIdTouser;

  final _i2.LikeUpdateManyWithoutUserNestedInput? like;

  final _i2.PostUpdateManyWithoutUserNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
  };
}

class CommentUncheckedUpdateManyWithoutUserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateManyWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
    _i2.CommentCreateWithoutUserInput,
    _i1.PrismaUnion<
      Iterable<_i2.CommentCreateWithoutUserInput>,
      _i1.PrismaUnion<
        _i2.CommentUncheckedCreateWithoutUserInput,
        Iterable<_i2.CommentUncheckedCreateWithoutUserInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.CommentCreateOrConnectWithoutUserInput,
    Iterable<_i2.CommentCreateOrConnectWithoutUserInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.CommentUpsertWithWhereUniqueWithoutUserInput,
    Iterable<_i2.CommentUpsertWithWhereUniqueWithoutUserInput>
  >?
  upsert;

  final _i2.CommentCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  set;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  disconnect;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  delete;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  connect;

  final _i1.PrismaUnion<
    _i2.CommentUpdateWithWhereUniqueWithoutUserInput,
    Iterable<_i2.CommentUpdateWithWhereUniqueWithoutUserInput>
  >?
  update;

  final _i1.PrismaUnion<
    _i2.CommentUpdateManyWithWhereWithoutUserInput,
    Iterable<_i2.CommentUpdateManyWithWhereWithoutUserInput>
  >?
  updateMany;

  final _i1.PrismaUnion<
    _i2.CommentScalarWhereInput,
    Iterable<_i2.CommentScalarWhereInput>
  >?
  deleteMany;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'createMany': createMany,
    'set': set,
    'disconnect': disconnect,
    'delete': delete,
    'connect': connect,
    'update': update,
    'updateMany': updateMany,
    'deleteMany': deleteMany,
  };
}

class FollowUncheckedUpdateWithoutUserFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedUpdateWithoutUserFollowFollowingIdTouserInput({
    this.id,
    this.followerId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? followerId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'followerId': followerId};
}

class FollowUpdateWithWhereUniqueWithoutUserFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateWithWhereUniqueWithoutUserFollowFollowingIdTouserInput({
    required this.where,
    required this.data,
  });

  final _i2.FollowWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.FollowUpdateWithoutUserFollowFollowingIdTouserInput,
    _i2.FollowUncheckedUpdateWithoutUserFollowFollowingIdTouserInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class FollowScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.followerId,
    this.followingId,
  });

  final _i1.PrismaUnion<
    _i2.FollowScalarWhereInput,
    Iterable<_i2.FollowScalarWhereInput>
  >?
  AND;

  final Iterable<_i2.FollowScalarWhereInput>? OR;

  final _i1.PrismaUnion<
    _i2.FollowScalarWhereInput,
    Iterable<_i2.FollowScalarWhereInput>
  >?
  NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? followerId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? followingId;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateManyMutationInput();

  @override
  Map<String, dynamic> toJson() => {};
}

class FollowUncheckedUpdateManyWithoutUserFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedUpdateManyWithoutUserFollowFollowingIdTouserInput({
    this.id,
    this.followerId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? followerId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'followerId': followerId};
}

class FollowUpdateManyWithWhereWithoutUserFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateManyWithWhereWithoutUserFollowFollowingIdTouserInput({
    required this.where,
    required this.data,
  });

  final _i2.FollowScalarWhereInput where;

  final _i1.PrismaUnion<
    _i2.FollowUpdateManyMutationInput,
    _i2.FollowUncheckedUpdateManyWithoutUserFollowFollowingIdTouserInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class FollowUncheckedUpdateManyWithoutUserFollowFollowingIdTouserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedUpdateManyWithoutUserFollowFollowingIdTouserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
    _i2.FollowCreateWithoutUserFollowFollowingIdTouserInput,
    _i1.PrismaUnion<
      Iterable<_i2.FollowCreateWithoutUserFollowFollowingIdTouserInput>,
      _i1.PrismaUnion<
        _i2.FollowUncheckedCreateWithoutUserFollowFollowingIdTouserInput,
        Iterable<
          _i2.FollowUncheckedCreateWithoutUserFollowFollowingIdTouserInput
        >
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.FollowCreateOrConnectWithoutUserFollowFollowingIdTouserInput,
    Iterable<_i2.FollowCreateOrConnectWithoutUserFollowFollowingIdTouserInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.FollowUpsertWithWhereUniqueWithoutUserFollowFollowingIdTouserInput,
    Iterable<
      _i2.FollowUpsertWithWhereUniqueWithoutUserFollowFollowingIdTouserInput
    >
  >?
  upsert;

  final _i2.FollowCreateManyUserFollowFollowingIdTouserInputEnvelope?
  createMany;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  set;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  disconnect;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  delete;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  connect;

  final _i1.PrismaUnion<
    _i2.FollowUpdateWithWhereUniqueWithoutUserFollowFollowingIdTouserInput,
    Iterable<
      _i2.FollowUpdateWithWhereUniqueWithoutUserFollowFollowingIdTouserInput
    >
  >?
  update;

  final _i1.PrismaUnion<
    _i2.FollowUpdateManyWithWhereWithoutUserFollowFollowingIdTouserInput,
    Iterable<
      _i2.FollowUpdateManyWithWhereWithoutUserFollowFollowingIdTouserInput
    >
  >?
  updateMany;

  final _i1.PrismaUnion<
    _i2.FollowScalarWhereInput,
    Iterable<_i2.FollowScalarWhereInput>
  >?
  deleteMany;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'createMany': createMany,
    'set': set,
    'disconnect': disconnect,
    'delete': delete,
    'connect': connect,
    'update': update,
    'updateMany': updateMany,
    'deleteMany': deleteMany,
  };
}

class LikeUncheckedUpdateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUncheckedUpdateWithoutUserInput({this.id, this.postId});

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? postId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'postId': postId};
}

class LikeUpdateWithWhereUniqueWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUpdateWithWhereUniqueWithoutUserInput({
    required this.where,
    required this.data,
  });

  final _i2.LikeWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.LikeUpdateWithoutUserInput,
    _i2.LikeUncheckedUpdateWithoutUserInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class LikeUncheckedUpdateManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUncheckedUpdateManyWithoutUserInput({this.id, this.postId});

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? postId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'postId': postId};
}

class LikeUpdateManyWithWhereWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUpdateManyWithWhereWithoutUserInput({
    required this.where,
    required this.data,
  });

  final _i2.LikeScalarWhereInput where;

  final _i1.PrismaUnion<
    _i2.LikeUpdateManyMutationInput,
    _i2.LikeUncheckedUpdateManyWithoutUserInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class LikeUncheckedUpdateManyWithoutUserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUncheckedUpdateManyWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
    _i2.LikeCreateWithoutUserInput,
    _i1.PrismaUnion<
      Iterable<_i2.LikeCreateWithoutUserInput>,
      _i1.PrismaUnion<
        _i2.LikeUncheckedCreateWithoutUserInput,
        Iterable<_i2.LikeUncheckedCreateWithoutUserInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.LikeCreateOrConnectWithoutUserInput,
    Iterable<_i2.LikeCreateOrConnectWithoutUserInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.LikeUpsertWithWhereUniqueWithoutUserInput,
    Iterable<_i2.LikeUpsertWithWhereUniqueWithoutUserInput>
  >?
  upsert;

  final _i2.LikeCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  set;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  disconnect;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  delete;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  connect;

  final _i1.PrismaUnion<
    _i2.LikeUpdateWithWhereUniqueWithoutUserInput,
    Iterable<_i2.LikeUpdateWithWhereUniqueWithoutUserInput>
  >?
  update;

  final _i1.PrismaUnion<
    _i2.LikeUpdateManyWithWhereWithoutUserInput,
    Iterable<_i2.LikeUpdateManyWithWhereWithoutUserInput>
  >?
  updateMany;

  final _i1.PrismaUnion<
    _i2.LikeScalarWhereInput,
    Iterable<_i2.LikeScalarWhereInput>
  >?
  deleteMany;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'createMany': createMany,
    'set': set,
    'disconnect': disconnect,
    'delete': delete,
    'connect': connect,
    'update': update,
    'updateMany': updateMany,
    'deleteMany': deleteMany,
  };
}

class PostUncheckedUpdateManyWithoutUserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateManyWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutUserInput,
    _i1.PrismaUnion<
      Iterable<_i2.PostCreateWithoutUserInput>,
      _i1.PrismaUnion<
        _i2.PostUncheckedCreateWithoutUserInput,
        Iterable<_i2.PostUncheckedCreateWithoutUserInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.PostCreateOrConnectWithoutUserInput,
    Iterable<_i2.PostCreateOrConnectWithoutUserInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.PostUpsertWithWhereUniqueWithoutUserInput,
    Iterable<_i2.PostUpsertWithWhereUniqueWithoutUserInput>
  >?
  upsert;

  final _i2.PostCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.PostWhereUniqueInput,
    Iterable<_i2.PostWhereUniqueInput>
  >?
  set;

  final _i1.PrismaUnion<
    _i2.PostWhereUniqueInput,
    Iterable<_i2.PostWhereUniqueInput>
  >?
  disconnect;

  final _i1.PrismaUnion<
    _i2.PostWhereUniqueInput,
    Iterable<_i2.PostWhereUniqueInput>
  >?
  delete;

  final _i1.PrismaUnion<
    _i2.PostWhereUniqueInput,
    Iterable<_i2.PostWhereUniqueInput>
  >?
  connect;

  final _i1.PrismaUnion<
    _i2.PostUpdateWithWhereUniqueWithoutUserInput,
    Iterable<_i2.PostUpdateWithWhereUniqueWithoutUserInput>
  >?
  update;

  final _i1.PrismaUnion<
    _i2.PostUpdateManyWithWhereWithoutUserInput,
    Iterable<_i2.PostUpdateManyWithWhereWithoutUserInput>
  >?
  updateMany;

  final _i1.PrismaUnion<
    _i2.PostScalarWhereInput,
    Iterable<_i2.PostScalarWhereInput>
  >?
  deleteMany;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'createMany': createMany,
    'set': set,
    'disconnect': disconnect,
    'delete': delete,
    'connect': connect,
    'update': update,
    'updateMany': updateMany,
    'deleteMany': deleteMany,
  };
}

class UserUncheckedUpdateWithoutFollowFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateWithoutFollowFollowFollowerIdTouserInput({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
    this.comment,
    this.followFollowFollowingIdTouser,
    this.like,
    this.post,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  createdAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
  passwordHash;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutUserNestedInput? comment;

  final _i2.FollowUncheckedUpdateManyWithoutUserFollowFollowingIdTouserNestedInput?
  followFollowFollowingIdTouser;

  final _i2.LikeUncheckedUpdateManyWithoutUserNestedInput? like;

  final _i2.PostUncheckedUpdateManyWithoutUserNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
  };
}

class UserUpsertWithoutFollowFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpsertWithoutFollowFollowFollowerIdTouserInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<
    _i2.UserUpdateWithoutFollowFollowFollowerIdTouserInput,
    _i2.UserUncheckedUpdateWithoutFollowFollowFollowerIdTouserInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutFollowFollowFollowerIdTouserInput,
    _i2.UserUncheckedCreateWithoutFollowFollowFollowerIdTouserInput
  >
  create;

  final _i2.UserWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
    'update': update,
    'create': create,
    'where': where,
  };
}

class UserUpdateToOneWithWhereWithoutFollowFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateToOneWithWhereWithoutFollowFollowFollowerIdTouserInput({
    this.where,
    required this.data,
  });

  final _i2.UserWhereInput? where;

  final _i1.PrismaUnion<
    _i2.UserUpdateWithoutFollowFollowFollowerIdTouserInput,
    _i2.UserUncheckedUpdateWithoutFollowFollowFollowerIdTouserInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class UserUpdateOneRequiredWithoutFollowFollowFollowerIdTouserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateOneRequiredWithoutFollowFollowFollowerIdTouserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutFollowFollowFollowerIdTouserInput,
    _i2.UserUncheckedCreateWithoutFollowFollowFollowerIdTouserInput
  >?
  create;

  final _i2.UserCreateOrConnectWithoutFollowFollowFollowerIdTouserInput?
  connectOrCreate;

  final _i2.UserUpsertWithoutFollowFollowFollowerIdTouserInput? upsert;

  final _i2.UserWhereUniqueInput? connect;

  final _i1.PrismaUnion<
    _i2.UserUpdateToOneWithWhereWithoutFollowFollowFollowerIdTouserInput,
    _i1.PrismaUnion<
      _i2.UserUpdateWithoutFollowFollowFollowerIdTouserInput,
      _i2.UserUncheckedUpdateWithoutFollowFollowFollowerIdTouserInput
    >
  >?
  update;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'connect': connect,
    'update': update,
  };
}

class FollowUpdateWithoutUserFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateWithoutUserFollowFollowingIdTouserInput({
    this.userFollowFollowerIdTouser,
  });

  final _i2.UserUpdateOneRequiredWithoutFollowFollowFollowerIdTouserNestedInput?
  userFollowFollowerIdTouser;

  @override
  Map<String, dynamic> toJson() => {
    'user_follow_followerIdTouser': userFollowFollowerIdTouser,
  };
}

class FollowUpsertWithWhereUniqueWithoutUserFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpsertWithWhereUniqueWithoutUserFollowFollowingIdTouserInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.FollowWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.FollowUpdateWithoutUserFollowFollowingIdTouserInput,
    _i2.FollowUncheckedUpdateWithoutUserFollowFollowingIdTouserInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.FollowCreateWithoutUserFollowFollowingIdTouserInput,
    _i2.FollowUncheckedCreateWithoutUserFollowFollowingIdTouserInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'update': update,
    'create': create,
  };
}

class FollowUpdateManyWithoutUserFollowFollowingIdTouserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateManyWithoutUserFollowFollowingIdTouserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
    _i2.FollowCreateWithoutUserFollowFollowingIdTouserInput,
    _i1.PrismaUnion<
      Iterable<_i2.FollowCreateWithoutUserFollowFollowingIdTouserInput>,
      _i1.PrismaUnion<
        _i2.FollowUncheckedCreateWithoutUserFollowFollowingIdTouserInput,
        Iterable<
          _i2.FollowUncheckedCreateWithoutUserFollowFollowingIdTouserInput
        >
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.FollowCreateOrConnectWithoutUserFollowFollowingIdTouserInput,
    Iterable<_i2.FollowCreateOrConnectWithoutUserFollowFollowingIdTouserInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.FollowUpsertWithWhereUniqueWithoutUserFollowFollowingIdTouserInput,
    Iterable<
      _i2.FollowUpsertWithWhereUniqueWithoutUserFollowFollowingIdTouserInput
    >
  >?
  upsert;

  final _i2.FollowCreateManyUserFollowFollowingIdTouserInputEnvelope?
  createMany;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  set;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  disconnect;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  delete;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  connect;

  final _i1.PrismaUnion<
    _i2.FollowUpdateWithWhereUniqueWithoutUserFollowFollowingIdTouserInput,
    Iterable<
      _i2.FollowUpdateWithWhereUniqueWithoutUserFollowFollowingIdTouserInput
    >
  >?
  update;

  final _i1.PrismaUnion<
    _i2.FollowUpdateManyWithWhereWithoutUserFollowFollowingIdTouserInput,
    Iterable<
      _i2.FollowUpdateManyWithWhereWithoutUserFollowFollowingIdTouserInput
    >
  >?
  updateMany;

  final _i1.PrismaUnion<
    _i2.FollowScalarWhereInput,
    Iterable<_i2.FollowScalarWhereInput>
  >?
  deleteMany;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'createMany': createMany,
    'set': set,
    'disconnect': disconnect,
    'delete': delete,
    'connect': connect,
    'update': update,
    'updateMany': updateMany,
    'deleteMany': deleteMany,
  };
}

class UserUpdateWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateWithoutCommentInput({
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
    this.followFollowFollowerIdTouser,
    this.followFollowFollowingIdTouser,
    this.like,
    this.post,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  createdAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
  passwordHash;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  updatedAt;

  final _i2.FollowUpdateManyWithoutUserFollowFollowerIdTouserNestedInput?
  followFollowFollowerIdTouser;

  final _i2.FollowUpdateManyWithoutUserFollowFollowingIdTouserNestedInput?
  followFollowFollowingIdTouser;

  final _i2.LikeUpdateManyWithoutUserNestedInput? like;

  final _i2.PostUpdateManyWithoutUserNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
  };
}

class FollowUncheckedUpdateWithoutUserFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedUpdateWithoutUserFollowFollowerIdTouserInput({
    this.id,
    this.followingId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? followingId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'followingId': followingId};
}

class FollowUpdateWithWhereUniqueWithoutUserFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateWithWhereUniqueWithoutUserFollowFollowerIdTouserInput({
    required this.where,
    required this.data,
  });

  final _i2.FollowWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.FollowUpdateWithoutUserFollowFollowerIdTouserInput,
    _i2.FollowUncheckedUpdateWithoutUserFollowFollowerIdTouserInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class FollowUncheckedUpdateManyWithoutUserFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedUpdateManyWithoutUserFollowFollowerIdTouserInput({
    this.id,
    this.followingId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? followingId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'followingId': followingId};
}

class FollowUpdateManyWithWhereWithoutUserFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateManyWithWhereWithoutUserFollowFollowerIdTouserInput({
    required this.where,
    required this.data,
  });

  final _i2.FollowScalarWhereInput where;

  final _i1.PrismaUnion<
    _i2.FollowUpdateManyMutationInput,
    _i2.FollowUncheckedUpdateManyWithoutUserFollowFollowerIdTouserInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class FollowUncheckedUpdateManyWithoutUserFollowFollowerIdTouserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedUpdateManyWithoutUserFollowFollowerIdTouserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
    _i2.FollowCreateWithoutUserFollowFollowerIdTouserInput,
    _i1.PrismaUnion<
      Iterable<_i2.FollowCreateWithoutUserFollowFollowerIdTouserInput>,
      _i1.PrismaUnion<
        _i2.FollowUncheckedCreateWithoutUserFollowFollowerIdTouserInput,
        Iterable<
          _i2.FollowUncheckedCreateWithoutUserFollowFollowerIdTouserInput
        >
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.FollowCreateOrConnectWithoutUserFollowFollowerIdTouserInput,
    Iterable<_i2.FollowCreateOrConnectWithoutUserFollowFollowerIdTouserInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.FollowUpsertWithWhereUniqueWithoutUserFollowFollowerIdTouserInput,
    Iterable<
      _i2.FollowUpsertWithWhereUniqueWithoutUserFollowFollowerIdTouserInput
    >
  >?
  upsert;

  final _i2.FollowCreateManyUserFollowFollowerIdTouserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  set;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  disconnect;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  delete;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  connect;

  final _i1.PrismaUnion<
    _i2.FollowUpdateWithWhereUniqueWithoutUserFollowFollowerIdTouserInput,
    Iterable<
      _i2.FollowUpdateWithWhereUniqueWithoutUserFollowFollowerIdTouserInput
    >
  >?
  update;

  final _i1.PrismaUnion<
    _i2.FollowUpdateManyWithWhereWithoutUserFollowFollowerIdTouserInput,
    Iterable<
      _i2.FollowUpdateManyWithWhereWithoutUserFollowFollowerIdTouserInput
    >
  >?
  updateMany;

  final _i1.PrismaUnion<
    _i2.FollowScalarWhereInput,
    Iterable<_i2.FollowScalarWhereInput>
  >?
  deleteMany;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'createMany': createMany,
    'set': set,
    'disconnect': disconnect,
    'delete': delete,
    'connect': connect,
    'update': update,
    'updateMany': updateMany,
    'deleteMany': deleteMany,
  };
}

class UserUncheckedUpdateWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateWithoutCommentInput({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
    this.followFollowFollowerIdTouser,
    this.followFollowFollowingIdTouser,
    this.like,
    this.post,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  createdAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
  passwordHash;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  updatedAt;

  final _i2.FollowUncheckedUpdateManyWithoutUserFollowFollowerIdTouserNestedInput?
  followFollowFollowerIdTouser;

  final _i2.FollowUncheckedUpdateManyWithoutUserFollowFollowingIdTouserNestedInput?
  followFollowFollowingIdTouser;

  final _i2.LikeUncheckedUpdateManyWithoutUserNestedInput? like;

  final _i2.PostUncheckedUpdateManyWithoutUserNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
  };
}

class UserUpsertWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpsertWithoutCommentInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<
    _i2.UserUpdateWithoutCommentInput,
    _i2.UserUncheckedUpdateWithoutCommentInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutCommentInput,
    _i2.UserUncheckedCreateWithoutCommentInput
  >
  create;

  final _i2.UserWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
    'update': update,
    'create': create,
    'where': where,
  };
}

class UserUpdateToOneWithWhereWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateToOneWithWhereWithoutCommentInput({
    this.where,
    required this.data,
  });

  final _i2.UserWhereInput? where;

  final _i1.PrismaUnion<
    _i2.UserUpdateWithoutCommentInput,
    _i2.UserUncheckedUpdateWithoutCommentInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class UserUpdateOneRequiredWithoutCommentNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateOneRequiredWithoutCommentNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutCommentInput,
    _i2.UserUncheckedCreateWithoutCommentInput
  >?
  create;

  final _i2.UserCreateOrConnectWithoutCommentInput? connectOrCreate;

  final _i2.UserUpsertWithoutCommentInput? upsert;

  final _i2.UserWhereUniqueInput? connect;

  final _i1.PrismaUnion<
    _i2.UserUpdateToOneWithWhereWithoutCommentInput,
    _i1.PrismaUnion<
      _i2.UserUpdateWithoutCommentInput,
      _i2.UserUncheckedUpdateWithoutCommentInput
    >
  >?
  update;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'connect': connect,
    'update': update,
  };
}

class CommentUpdateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateWithoutPostInput({this.message, this.date, this.user});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i2.UserUpdateOneRequiredWithoutCommentNestedInput? user;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'date': date,
    'user': user,
  };
}

class CommentUpsertWithWhereUniqueWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpsertWithWhereUniqueWithoutPostInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.CommentUpdateWithoutPostInput,
    _i2.CommentUncheckedUpdateWithoutPostInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.CommentCreateWithoutPostInput,
    _i2.CommentUncheckedCreateWithoutPostInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'update': update,
    'create': create,
  };
}

class CommentUpdateManyWithoutPostNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateManyWithoutPostNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
    _i2.CommentCreateWithoutPostInput,
    _i1.PrismaUnion<
      Iterable<_i2.CommentCreateWithoutPostInput>,
      _i1.PrismaUnion<
        _i2.CommentUncheckedCreateWithoutPostInput,
        Iterable<_i2.CommentUncheckedCreateWithoutPostInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.CommentCreateOrConnectWithoutPostInput,
    Iterable<_i2.CommentCreateOrConnectWithoutPostInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.CommentUpsertWithWhereUniqueWithoutPostInput,
    Iterable<_i2.CommentUpsertWithWhereUniqueWithoutPostInput>
  >?
  upsert;

  final _i2.CommentCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  set;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  disconnect;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  delete;

  final _i1.PrismaUnion<
    _i2.CommentWhereUniqueInput,
    Iterable<_i2.CommentWhereUniqueInput>
  >?
  connect;

  final _i1.PrismaUnion<
    _i2.CommentUpdateWithWhereUniqueWithoutPostInput,
    Iterable<_i2.CommentUpdateWithWhereUniqueWithoutPostInput>
  >?
  update;

  final _i1.PrismaUnion<
    _i2.CommentUpdateManyWithWhereWithoutPostInput,
    Iterable<_i2.CommentUpdateManyWithWhereWithoutPostInput>
  >?
  updateMany;

  final _i1.PrismaUnion<
    _i2.CommentScalarWhereInput,
    Iterable<_i2.CommentScalarWhereInput>
  >?
  deleteMany;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'createMany': createMany,
    'set': set,
    'disconnect': disconnect,
    'delete': delete,
    'connect': connect,
    'update': update,
    'updateMany': updateMany,
    'deleteMany': deleteMany,
  };
}

class UserUpdateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateWithoutPostInput({
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
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  createdAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
  passwordHash;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  updatedAt;

  final _i2.CommentUpdateManyWithoutUserNestedInput? comment;

  final _i2.FollowUpdateManyWithoutUserFollowFollowerIdTouserNestedInput?
  followFollowFollowerIdTouser;

  final _i2.FollowUpdateManyWithoutUserFollowFollowingIdTouserNestedInput?
  followFollowFollowingIdTouser;

  final _i2.LikeUpdateManyWithoutUserNestedInput? like;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
  };
}

class UserUncheckedUpdateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateWithoutPostInput({
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
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  createdAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
  passwordHash;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutUserNestedInput? comment;

  final _i2.FollowUncheckedUpdateManyWithoutUserFollowFollowerIdTouserNestedInput?
  followFollowFollowerIdTouser;

  final _i2.FollowUncheckedUpdateManyWithoutUserFollowFollowingIdTouserNestedInput?
  followFollowFollowingIdTouser;

  final _i2.LikeUncheckedUpdateManyWithoutUserNestedInput? like;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
  };
}

class UserUpsertWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpsertWithoutPostInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<
    _i2.UserUpdateWithoutPostInput,
    _i2.UserUncheckedUpdateWithoutPostInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutPostInput,
    _i2.UserUncheckedCreateWithoutPostInput
  >
  create;

  final _i2.UserWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
    'update': update,
    'create': create,
    'where': where,
  };
}

class UserUpdateToOneWithWhereWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateToOneWithWhereWithoutPostInput({
    this.where,
    required this.data,
  });

  final _i2.UserWhereInput? where;

  final _i1.PrismaUnion<
    _i2.UserUpdateWithoutPostInput,
    _i2.UserUncheckedUpdateWithoutPostInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class UserUpdateOneRequiredWithoutPostNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateOneRequiredWithoutPostNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutPostInput,
    _i2.UserUncheckedCreateWithoutPostInput
  >?
  create;

  final _i2.UserCreateOrConnectWithoutPostInput? connectOrCreate;

  final _i2.UserUpsertWithoutPostInput? upsert;

  final _i2.UserWhereUniqueInput? connect;

  final _i1.PrismaUnion<
    _i2.UserUpdateToOneWithWhereWithoutPostInput,
    _i1.PrismaUnion<
      _i2.UserUpdateWithoutPostInput,
      _i2.UserUncheckedUpdateWithoutPostInput
    >
  >?
  update;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'connect': connect,
    'update': update,
  };
}

class PostUpdateWithoutLikeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithoutLikeInput({
    this.message,
    this.image,
    this.date,
    this.comment,
    this.user,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i2.CommentUpdateManyWithoutPostNestedInput? comment;

  final _i2.UserUpdateOneRequiredWithoutPostNestedInput? user;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'image': image,
    'date': date,
    'comment': comment,
    'user': user,
  };
}

class PostUncheckedUpdateWithoutLikeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateWithoutLikeInput({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
    this.comment,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? ownerId;

  final _i2.CommentUncheckedUpdateManyWithoutPostNestedInput? comment;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    'comment': comment,
  };
}

class PostUpsertWithoutLikeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpsertWithoutLikeInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<
    _i2.PostUpdateWithoutLikeInput,
    _i2.PostUncheckedUpdateWithoutLikeInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutLikeInput,
    _i2.PostUncheckedCreateWithoutLikeInput
  >
  create;

  final _i2.PostWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
    'update': update,
    'create': create,
    'where': where,
  };
}

class PostUpdateToOneWithWhereWithoutLikeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateToOneWithWhereWithoutLikeInput({
    this.where,
    required this.data,
  });

  final _i2.PostWhereInput? where;

  final _i1.PrismaUnion<
    _i2.PostUpdateWithoutLikeInput,
    _i2.PostUncheckedUpdateWithoutLikeInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class PostUpdateOneRequiredWithoutLikeNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateOneRequiredWithoutLikeNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutLikeInput,
    _i2.PostUncheckedCreateWithoutLikeInput
  >?
  create;

  final _i2.PostCreateOrConnectWithoutLikeInput? connectOrCreate;

  final _i2.PostUpsertWithoutLikeInput? upsert;

  final _i2.PostWhereUniqueInput? connect;

  final _i1.PrismaUnion<
    _i2.PostUpdateToOneWithWhereWithoutLikeInput,
    _i1.PrismaUnion<
      _i2.PostUpdateWithoutLikeInput,
      _i2.PostUncheckedUpdateWithoutLikeInput
    >
  >?
  update;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'connect': connect,
    'update': update,
  };
}

class LikeUpdateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUpdateWithoutUserInput({this.post});

  final _i2.PostUpdateOneRequiredWithoutLikeNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {'post': post};
}

class LikeUpsertWithWhereUniqueWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUpsertWithWhereUniqueWithoutUserInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.LikeWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.LikeUpdateWithoutUserInput,
    _i2.LikeUncheckedUpdateWithoutUserInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.LikeCreateWithoutUserInput,
    _i2.LikeUncheckedCreateWithoutUserInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'update': update,
    'create': create,
  };
}

class LikeUpdateManyWithoutUserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUpdateManyWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
    _i2.LikeCreateWithoutUserInput,
    _i1.PrismaUnion<
      Iterable<_i2.LikeCreateWithoutUserInput>,
      _i1.PrismaUnion<
        _i2.LikeUncheckedCreateWithoutUserInput,
        Iterable<_i2.LikeUncheckedCreateWithoutUserInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.LikeCreateOrConnectWithoutUserInput,
    Iterable<_i2.LikeCreateOrConnectWithoutUserInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.LikeUpsertWithWhereUniqueWithoutUserInput,
    Iterable<_i2.LikeUpsertWithWhereUniqueWithoutUserInput>
  >?
  upsert;

  final _i2.LikeCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  set;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  disconnect;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  delete;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  connect;

  final _i1.PrismaUnion<
    _i2.LikeUpdateWithWhereUniqueWithoutUserInput,
    Iterable<_i2.LikeUpdateWithWhereUniqueWithoutUserInput>
  >?
  update;

  final _i1.PrismaUnion<
    _i2.LikeUpdateManyWithWhereWithoutUserInput,
    Iterable<_i2.LikeUpdateManyWithWhereWithoutUserInput>
  >?
  updateMany;

  final _i1.PrismaUnion<
    _i2.LikeScalarWhereInput,
    Iterable<_i2.LikeScalarWhereInput>
  >?
  deleteMany;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'createMany': createMany,
    'set': set,
    'disconnect': disconnect,
    'delete': delete,
    'connect': connect,
    'update': update,
    'updateMany': updateMany,
    'deleteMany': deleteMany,
  };
}

class UserUpdateWithoutFollowFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateWithoutFollowFollowFollowingIdTouserInput({
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
    this.comment,
    this.followFollowFollowerIdTouser,
    this.like,
    this.post,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  createdAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
  passwordHash;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  updatedAt;

  final _i2.CommentUpdateManyWithoutUserNestedInput? comment;

  final _i2.FollowUpdateManyWithoutUserFollowFollowerIdTouserNestedInput?
  followFollowFollowerIdTouser;

  final _i2.LikeUpdateManyWithoutUserNestedInput? like;

  final _i2.PostUpdateManyWithoutUserNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'like': like,
    'post': post,
  };
}

class UserUncheckedUpdateWithoutFollowFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateWithoutFollowFollowFollowingIdTouserInput({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
    this.comment,
    this.followFollowFollowerIdTouser,
    this.like,
    this.post,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  createdAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
  passwordHash;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutUserNestedInput? comment;

  final _i2.FollowUncheckedUpdateManyWithoutUserFollowFollowerIdTouserNestedInput?
  followFollowFollowerIdTouser;

  final _i2.LikeUncheckedUpdateManyWithoutUserNestedInput? like;

  final _i2.PostUncheckedUpdateManyWithoutUserNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'like': like,
    'post': post,
  };
}

class UserUpsertWithoutFollowFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpsertWithoutFollowFollowFollowingIdTouserInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<
    _i2.UserUpdateWithoutFollowFollowFollowingIdTouserInput,
    _i2.UserUncheckedUpdateWithoutFollowFollowFollowingIdTouserInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutFollowFollowFollowingIdTouserInput,
    _i2.UserUncheckedCreateWithoutFollowFollowFollowingIdTouserInput
  >
  create;

  final _i2.UserWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
    'update': update,
    'create': create,
    'where': where,
  };
}

class UserUpdateToOneWithWhereWithoutFollowFollowFollowingIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateToOneWithWhereWithoutFollowFollowFollowingIdTouserInput({
    this.where,
    required this.data,
  });

  final _i2.UserWhereInput? where;

  final _i1.PrismaUnion<
    _i2.UserUpdateWithoutFollowFollowFollowingIdTouserInput,
    _i2.UserUncheckedUpdateWithoutFollowFollowFollowingIdTouserInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class UserUpdateOneRequiredWithoutFollowFollowFollowingIdTouserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateOneRequiredWithoutFollowFollowFollowingIdTouserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutFollowFollowFollowingIdTouserInput,
    _i2.UserUncheckedCreateWithoutFollowFollowFollowingIdTouserInput
  >?
  create;

  final _i2.UserCreateOrConnectWithoutFollowFollowFollowingIdTouserInput?
  connectOrCreate;

  final _i2.UserUpsertWithoutFollowFollowFollowingIdTouserInput? upsert;

  final _i2.UserWhereUniqueInput? connect;

  final _i1.PrismaUnion<
    _i2.UserUpdateToOneWithWhereWithoutFollowFollowFollowingIdTouserInput,
    _i1.PrismaUnion<
      _i2.UserUpdateWithoutFollowFollowFollowingIdTouserInput,
      _i2.UserUncheckedUpdateWithoutFollowFollowFollowingIdTouserInput
    >
  >?
  update;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'connect': connect,
    'update': update,
  };
}

class FollowUpdateWithoutUserFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateWithoutUserFollowFollowerIdTouserInput({
    this.userFollowFollowingIdTouser,
  });

  final _i2.UserUpdateOneRequiredWithoutFollowFollowFollowingIdTouserNestedInput?
  userFollowFollowingIdTouser;

  @override
  Map<String, dynamic> toJson() => {
    'user_follow_followingIdTouser': userFollowFollowingIdTouser,
  };
}

class FollowUpsertWithWhereUniqueWithoutUserFollowFollowerIdTouserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpsertWithWhereUniqueWithoutUserFollowFollowerIdTouserInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.FollowWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.FollowUpdateWithoutUserFollowFollowerIdTouserInput,
    _i2.FollowUncheckedUpdateWithoutUserFollowFollowerIdTouserInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.FollowCreateWithoutUserFollowFollowerIdTouserInput,
    _i2.FollowUncheckedCreateWithoutUserFollowFollowerIdTouserInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'update': update,
    'create': create,
  };
}

class FollowUpdateManyWithoutUserFollowFollowerIdTouserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateManyWithoutUserFollowFollowerIdTouserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
    _i2.FollowCreateWithoutUserFollowFollowerIdTouserInput,
    _i1.PrismaUnion<
      Iterable<_i2.FollowCreateWithoutUserFollowFollowerIdTouserInput>,
      _i1.PrismaUnion<
        _i2.FollowUncheckedCreateWithoutUserFollowFollowerIdTouserInput,
        Iterable<
          _i2.FollowUncheckedCreateWithoutUserFollowFollowerIdTouserInput
        >
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.FollowCreateOrConnectWithoutUserFollowFollowerIdTouserInput,
    Iterable<_i2.FollowCreateOrConnectWithoutUserFollowFollowerIdTouserInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.FollowUpsertWithWhereUniqueWithoutUserFollowFollowerIdTouserInput,
    Iterable<
      _i2.FollowUpsertWithWhereUniqueWithoutUserFollowFollowerIdTouserInput
    >
  >?
  upsert;

  final _i2.FollowCreateManyUserFollowFollowerIdTouserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  set;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  disconnect;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  delete;

  final _i1.PrismaUnion<
    _i2.FollowWhereUniqueInput,
    Iterable<_i2.FollowWhereUniqueInput>
  >?
  connect;

  final _i1.PrismaUnion<
    _i2.FollowUpdateWithWhereUniqueWithoutUserFollowFollowerIdTouserInput,
    Iterable<
      _i2.FollowUpdateWithWhereUniqueWithoutUserFollowFollowerIdTouserInput
    >
  >?
  update;

  final _i1.PrismaUnion<
    _i2.FollowUpdateManyWithWhereWithoutUserFollowFollowerIdTouserInput,
    Iterable<
      _i2.FollowUpdateManyWithWhereWithoutUserFollowFollowerIdTouserInput
    >
  >?
  updateMany;

  final _i1.PrismaUnion<
    _i2.FollowScalarWhereInput,
    Iterable<_i2.FollowScalarWhereInput>
  >?
  deleteMany;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'createMany': createMany,
    'set': set,
    'disconnect': disconnect,
    'delete': delete,
    'connect': connect,
    'update': update,
    'updateMany': updateMany,
    'deleteMany': deleteMany,
  };
}

class UserUpdateWithoutLikeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateWithoutLikeInput({
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
    this.comment,
    this.followFollowFollowerIdTouser,
    this.followFollowFollowingIdTouser,
    this.post,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  createdAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
  passwordHash;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  updatedAt;

  final _i2.CommentUpdateManyWithoutUserNestedInput? comment;

  final _i2.FollowUpdateManyWithoutUserFollowFollowerIdTouserNestedInput?
  followFollowFollowerIdTouser;

  final _i2.FollowUpdateManyWithoutUserFollowFollowingIdTouserNestedInput?
  followFollowFollowingIdTouser;

  final _i2.PostUpdateManyWithoutUserNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'post': post,
  };
}

class UserUncheckedUpdateWithoutLikeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateWithoutLikeInput({
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
    this.post,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  createdAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
  passwordHash;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutUserNestedInput? comment;

  final _i2.FollowUncheckedUpdateManyWithoutUserFollowFollowerIdTouserNestedInput?
  followFollowFollowerIdTouser;

  final _i2.FollowUncheckedUpdateManyWithoutUserFollowFollowingIdTouserNestedInput?
  followFollowFollowingIdTouser;

  final _i2.PostUncheckedUpdateManyWithoutUserNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'post': post,
  };
}

class UserUpsertWithoutLikeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpsertWithoutLikeInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<
    _i2.UserUpdateWithoutLikeInput,
    _i2.UserUncheckedUpdateWithoutLikeInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutLikeInput,
    _i2.UserUncheckedCreateWithoutLikeInput
  >
  create;

  final _i2.UserWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
    'update': update,
    'create': create,
    'where': where,
  };
}

class UserUpdateToOneWithWhereWithoutLikeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateToOneWithWhereWithoutLikeInput({
    this.where,
    required this.data,
  });

  final _i2.UserWhereInput? where;

  final _i1.PrismaUnion<
    _i2.UserUpdateWithoutLikeInput,
    _i2.UserUncheckedUpdateWithoutLikeInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class UserUpdateOneRequiredWithoutLikeNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateOneRequiredWithoutLikeNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutLikeInput,
    _i2.UserUncheckedCreateWithoutLikeInput
  >?
  create;

  final _i2.UserCreateOrConnectWithoutLikeInput? connectOrCreate;

  final _i2.UserUpsertWithoutLikeInput? upsert;

  final _i2.UserWhereUniqueInput? connect;

  final _i1.PrismaUnion<
    _i2.UserUpdateToOneWithWhereWithoutLikeInput,
    _i1.PrismaUnion<
      _i2.UserUpdateWithoutLikeInput,
      _i2.UserUncheckedUpdateWithoutLikeInput
    >
  >?
  update;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'connect': connect,
    'update': update,
  };
}

class LikeUpdateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUpdateWithoutPostInput({this.user});

  final _i2.UserUpdateOneRequiredWithoutLikeNestedInput? user;

  @override
  Map<String, dynamic> toJson() => {'user': user};
}

class LikeUpsertWithWhereUniqueWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUpsertWithWhereUniqueWithoutPostInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.LikeWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.LikeUpdateWithoutPostInput,
    _i2.LikeUncheckedUpdateWithoutPostInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.LikeCreateWithoutPostInput,
    _i2.LikeUncheckedCreateWithoutPostInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'update': update,
    'create': create,
  };
}

class LikeUpdateManyWithoutPostNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUpdateManyWithoutPostNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
    _i2.LikeCreateWithoutPostInput,
    _i1.PrismaUnion<
      Iterable<_i2.LikeCreateWithoutPostInput>,
      _i1.PrismaUnion<
        _i2.LikeUncheckedCreateWithoutPostInput,
        Iterable<_i2.LikeUncheckedCreateWithoutPostInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.LikeCreateOrConnectWithoutPostInput,
    Iterable<_i2.LikeCreateOrConnectWithoutPostInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.LikeUpsertWithWhereUniqueWithoutPostInput,
    Iterable<_i2.LikeUpsertWithWhereUniqueWithoutPostInput>
  >?
  upsert;

  final _i2.LikeCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  set;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  disconnect;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  delete;

  final _i1.PrismaUnion<
    _i2.LikeWhereUniqueInput,
    Iterable<_i2.LikeWhereUniqueInput>
  >?
  connect;

  final _i1.PrismaUnion<
    _i2.LikeUpdateWithWhereUniqueWithoutPostInput,
    Iterable<_i2.LikeUpdateWithWhereUniqueWithoutPostInput>
  >?
  update;

  final _i1.PrismaUnion<
    _i2.LikeUpdateManyWithWhereWithoutPostInput,
    Iterable<_i2.LikeUpdateManyWithWhereWithoutPostInput>
  >?
  updateMany;

  final _i1.PrismaUnion<
    _i2.LikeScalarWhereInput,
    Iterable<_i2.LikeScalarWhereInput>
  >?
  deleteMany;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'createMany': createMany,
    'set': set,
    'disconnect': disconnect,
    'delete': delete,
    'connect': connect,
    'update': update,
    'updateMany': updateMany,
    'deleteMany': deleteMany,
  };
}

class PostUpdateWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithoutCommentInput({
    this.message,
    this.image,
    this.date,
    this.like,
    this.user,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i2.LikeUpdateManyWithoutPostNestedInput? like;

  final _i2.UserUpdateOneRequiredWithoutPostNestedInput? user;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'image': image,
    'date': date,
    'like': like,
    'user': user,
  };
}

class PostUncheckedUpdateWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateWithoutCommentInput({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
    this.like,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? ownerId;

  final _i2.LikeUncheckedUpdateManyWithoutPostNestedInput? like;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    'like': like,
  };
}

class PostUpsertWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpsertWithoutCommentInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<
    _i2.PostUpdateWithoutCommentInput,
    _i2.PostUncheckedUpdateWithoutCommentInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutCommentInput,
    _i2.PostUncheckedCreateWithoutCommentInput
  >
  create;

  final _i2.PostWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
    'update': update,
    'create': create,
    'where': where,
  };
}

class PostUpdateToOneWithWhereWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateToOneWithWhereWithoutCommentInput({
    this.where,
    required this.data,
  });

  final _i2.PostWhereInput? where;

  final _i1.PrismaUnion<
    _i2.PostUpdateWithoutCommentInput,
    _i2.PostUncheckedUpdateWithoutCommentInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class PostUpdateOneRequiredWithoutCommentNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateOneRequiredWithoutCommentNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutCommentInput,
    _i2.PostUncheckedCreateWithoutCommentInput
  >?
  create;

  final _i2.PostCreateOrConnectWithoutCommentInput? connectOrCreate;

  final _i2.PostUpsertWithoutCommentInput? upsert;

  final _i2.PostWhereUniqueInput? connect;

  final _i1.PrismaUnion<
    _i2.PostUpdateToOneWithWhereWithoutCommentInput,
    _i1.PrismaUnion<
      _i2.PostUpdateWithoutCommentInput,
      _i2.PostUncheckedUpdateWithoutCommentInput
    >
  >?
  update;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'connect': connect,
    'update': update,
  };
}

class CommentUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateInput({this.message, this.date, this.post, this.user});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i2.PostUpdateOneRequiredWithoutCommentNestedInput? post;

  final _i2.UserUpdateOneRequiredWithoutCommentNestedInput? user;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'date': date,
    'post': post,
    'user': user,
  };
}

class CommentUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateInput({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
  };
}

class CommentUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateManyInput({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
  };
}

class CommentCountAggregateOutputType {
  const CommentCountAggregateOutputType({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
    this.$all,
  });

  factory CommentCountAggregateOutputType.fromJson(Map json) =>
      CommentCountAggregateOutputType(
        id: json['id'],
        message: json['message'],
        date: json['date'],
        userId: json['userId'],
        postId: json['postId'],
        $all: json['_all'],
      );

  final int? id;

  final int? message;

  final int? date;

  final int? userId;

  final int? postId;

  final int? $all;

  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
    '_all': $all,
  };
}

class CommentAvgAggregateOutputType {
  const CommentAvgAggregateOutputType({this.id, this.userId, this.postId});

  factory CommentAvgAggregateOutputType.fromJson(Map json) =>
      CommentAvgAggregateOutputType(
        id: json['id'],
        userId: json['userId'],
        postId: json['postId'],
      );

  final double? id;

  final double? userId;

  final double? postId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class CommentSumAggregateOutputType {
  const CommentSumAggregateOutputType({this.id, this.userId, this.postId});

  factory CommentSumAggregateOutputType.fromJson(Map json) =>
      CommentSumAggregateOutputType(
        id: json['id'],
        userId: json['userId'],
        postId: json['postId'],
      );

  final int? id;

  final int? userId;

  final int? postId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class CommentMinAggregateOutputType {
  const CommentMinAggregateOutputType({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
  });

  factory CommentMinAggregateOutputType.fromJson(Map json) =>
      CommentMinAggregateOutputType(
        id: json['id'],
        message: json['message'],
        date: switch (json['date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['date'],
        },
        userId: json['userId'],
        postId: json['postId'],
      );

  final int? id;

  final String? message;

  final DateTime? date;

  final int? userId;

  final int? postId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date?.toIso8601String(),
    'userId': userId,
    'postId': postId,
  };
}

class CommentMaxAggregateOutputType {
  const CommentMaxAggregateOutputType({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
  });

  factory CommentMaxAggregateOutputType.fromJson(Map json) =>
      CommentMaxAggregateOutputType(
        id: json['id'],
        message: json['message'],
        date: switch (json['date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['date'],
        },
        userId: json['userId'],
        postId: json['postId'],
      );

  final int? id;

  final String? message;

  final DateTime? date;

  final int? userId;

  final int? postId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date?.toIso8601String(),
    'userId': userId,
    'postId': postId,
  };
}

class CommentGroupByOutputType {
  const CommentGroupByOutputType({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory CommentGroupByOutputType.fromJson(Map json) =>
      CommentGroupByOutputType(
        id: json['id'],
        message: json['message'],
        date: switch (json['date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['date'],
        },
        userId: json['userId'],
        postId: json['postId'],
        $count: json['_count'] is Map
            ? _i2.CommentCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.CommentAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.CommentSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.CommentMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.CommentMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? message;

  final DateTime? date;

  final int? userId;

  final int? postId;

  final _i2.CommentCountAggregateOutputType? $count;

  final _i2.CommentAvgAggregateOutputType? $avg;

  final _i2.CommentSumAggregateOutputType? $sum;

  final _i2.CommentMinAggregateOutputType? $min;

  final _i2.CommentMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date?.toIso8601String(),
    'userId': userId,
    'postId': postId,
    '_count': $count?.toJson(),
    '_avg': $avg?.toJson(),
    '_sum': $sum?.toJson(),
    '_min': $min?.toJson(),
    '_max': $max?.toJson(),
  };
}

class CommentCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCountOrderByAggregateInput({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? message;

  final _i2.SortOrder? date;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
  };
}

class CommentAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentAvgOrderByAggregateInput({this.id, this.userId, this.postId});

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class CommentMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentMaxOrderByAggregateInput({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? message;

  final _i2.SortOrder? date;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
  };
}

class CommentMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentMinOrderByAggregateInput({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? message;

  final _i2.SortOrder? date;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
  };
}

class CommentSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentSumOrderByAggregateInput({this.id, this.userId, this.postId});

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class CommentOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentOrderByWithAggregationInput({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? message;

  final _i2.SortOrder? date;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? postId;

  final _i2.CommentCountOrderByAggregateInput? $count;

  final _i2.CommentAvgOrderByAggregateInput? $avg;

  final _i2.CommentMaxOrderByAggregateInput? $max;

  final _i2.CommentMinOrderByAggregateInput? $min;

  final _i2.CommentSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
    '_count': $count,
    '_avg': $avg,
    '_max': $max,
    '_min': $min,
    '_sum': $sum,
  };
}

class NestedFloatFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double, _i1.Reference<double>>? equals;

  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double, _i2.NestedFloatFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
  };
}

class NestedIntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}

class IntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.search,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final String? search;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'contains': contains,
    'startsWith': startsWith,
    'endsWith': endsWith,
    'search': search,
    'not': not,
    '_count': $count,
    '_min': $min,
    '_max': $max,
  };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.search,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final String? search;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'contains': contains,
    'startsWith': startsWith,
    'endsWith': endsWith,
    'search': search,
    'not': not,
    '_count': $count,
    '_min': $min,
    '_max': $max,
  };
}

class NestedDateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
    '_count': $count,
    '_min': $min,
    '_max': $max,
  };
}

class DateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
    '_count': $count,
    '_min': $min,
    '_max': $max,
  };
}

class CommentScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
  });

  final _i1.PrismaUnion<
    _i2.CommentScalarWhereWithAggregatesInput,
    Iterable<_i2.CommentScalarWhereWithAggregatesInput>
  >?
  AND;

  final Iterable<_i2.CommentScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<
    _i2.CommentScalarWhereWithAggregatesInput,
    Iterable<_i2.CommentScalarWhereWithAggregatesInput>
  >?
  NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? message;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? date;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? userId;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? postId;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
  };
}

class CommentCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCountAggregateOutputTypeSelect({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
    this.$all,
  });

  final bool? id;

  final bool? message;

  final bool? date;

  final bool? userId;

  final bool? postId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
    '_all': $all,
  };
}

class CommentGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentGroupByOutputTypeCountArgs({this.select});

  final _i2.CommentCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CommentAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentAvgAggregateOutputTypeSelect({
    this.id,
    this.userId,
    this.postId,
  });

  final bool? id;

  final bool? userId;

  final bool? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class CommentGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentGroupByOutputTypeAvgArgs({this.select});

  final _i2.CommentAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CommentSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentSumAggregateOutputTypeSelect({
    this.id,
    this.userId,
    this.postId,
  });

  final bool? id;

  final bool? userId;

  final bool? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class CommentGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentGroupByOutputTypeSumArgs({this.select});

  final _i2.CommentSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CommentMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentMinAggregateOutputTypeSelect({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
  });

  final bool? id;

  final bool? message;

  final bool? date;

  final bool? userId;

  final bool? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
  };
}

class CommentGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentGroupByOutputTypeMinArgs({this.select});

  final _i2.CommentMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CommentMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentMaxAggregateOutputTypeSelect({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
  });

  final bool? id;

  final bool? message;

  final bool? date;

  final bool? userId;

  final bool? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
  };
}

class CommentGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentGroupByOutputTypeMaxArgs({this.select});

  final _i2.CommentMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CommentGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentGroupByOutputTypeSelect({
    this.id,
    this.message,
    this.date,
    this.userId,
    this.postId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? message;

  final bool? date;

  final bool? userId;

  final bool? postId;

  final _i1.PrismaUnion<bool, _i2.CommentGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.CommentGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.CommentGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.CommentGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.CommentGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'date': date,
    'userId': userId,
    'postId': postId,
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}

class AggregateComment {
  const AggregateComment({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateComment.fromJson(Map json) => AggregateComment(
    $count: json['_count'] is Map
        ? _i2.CommentCountAggregateOutputType.fromJson(json['_count'])
        : null,
    $avg: json['_avg'] is Map
        ? _i2.CommentAvgAggregateOutputType.fromJson(json['_avg'])
        : null,
    $sum: json['_sum'] is Map
        ? _i2.CommentSumAggregateOutputType.fromJson(json['_sum'])
        : null,
    $min: json['_min'] is Map
        ? _i2.CommentMinAggregateOutputType.fromJson(json['_min'])
        : null,
    $max: json['_max'] is Map
        ? _i2.CommentMaxAggregateOutputType.fromJson(json['_max'])
        : null,
  );

  final _i2.CommentCountAggregateOutputType? $count;

  final _i2.CommentAvgAggregateOutputType? $avg;

  final _i2.CommentSumAggregateOutputType? $sum;

  final _i2.CommentMinAggregateOutputType? $min;

  final _i2.CommentMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
    '_count': $count?.toJson(),
    '_avg': $avg?.toJson(),
    '_sum': $sum?.toJson(),
    '_min': $min?.toJson(),
    '_max': $max?.toJson(),
  };
}

class AggregateCommentCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCommentCountArgs({this.select});

  final _i2.CommentCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCommentAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCommentAvgArgs({this.select});

  final _i2.CommentAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCommentSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCommentSumArgs({this.select});

  final _i2.CommentSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCommentMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCommentMinArgs({this.select});

  final _i2.CommentMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCommentMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCommentMaxArgs({this.select});

  final _i2.CommentMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCommentSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCommentSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateCommentCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateCommentAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateCommentSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateCommentMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateCommentMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}

class FollowCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateInput({
    required this.userFollowFollowerIdTouser,
    required this.userFollowFollowingIdTouser,
  });

  final _i2.UserCreateNestedOneWithoutFollowFollowFollowerIdTouserInput
  userFollowFollowerIdTouser;

  final _i2.UserCreateNestedOneWithoutFollowFollowFollowingIdTouserInput
  userFollowFollowingIdTouser;

  @override
  Map<String, dynamic> toJson() => {
    'user_follow_followerIdTouser': userFollowFollowerIdTouser,
    'user_follow_followingIdTouser': userFollowFollowingIdTouser,
  };
}

class FollowUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedCreateInput({
    this.id,
    required this.followerId,
    required this.followingId,
  });

  final int? id;

  final int followerId;

  final int followingId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateManyInput({
    this.id,
    required this.followerId,
    required this.followingId,
  });

  final int? id;

  final int followerId;

  final int followingId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateInput({
    this.userFollowFollowerIdTouser,
    this.userFollowFollowingIdTouser,
  });

  final _i2.UserUpdateOneRequiredWithoutFollowFollowFollowerIdTouserNestedInput?
  userFollowFollowerIdTouser;

  final _i2.UserUpdateOneRequiredWithoutFollowFollowFollowingIdTouserNestedInput?
  userFollowFollowingIdTouser;

  @override
  Map<String, dynamic> toJson() => {
    'user_follow_followerIdTouser': userFollowFollowerIdTouser,
    'user_follow_followingIdTouser': userFollowFollowingIdTouser,
  };
}

class FollowUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedUpdateInput({
    this.id,
    this.followerId,
    this.followingId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? followerId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? followingId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedUpdateManyInput({
    this.id,
    this.followerId,
    this.followingId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? followerId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? followingId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowCountAggregateOutputType {
  const FollowCountAggregateOutputType({
    this.id,
    this.followerId,
    this.followingId,
    this.$all,
  });

  factory FollowCountAggregateOutputType.fromJson(Map json) =>
      FollowCountAggregateOutputType(
        id: json['id'],
        followerId: json['followerId'],
        followingId: json['followingId'],
        $all: json['_all'],
      );

  final int? id;

  final int? followerId;

  final int? followingId;

  final int? $all;

  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
    '_all': $all,
  };
}

class FollowAvgAggregateOutputType {
  const FollowAvgAggregateOutputType({
    this.id,
    this.followerId,
    this.followingId,
  });

  factory FollowAvgAggregateOutputType.fromJson(Map json) =>
      FollowAvgAggregateOutputType(
        id: json['id'],
        followerId: json['followerId'],
        followingId: json['followingId'],
      );

  final double? id;

  final double? followerId;

  final double? followingId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowSumAggregateOutputType {
  const FollowSumAggregateOutputType({
    this.id,
    this.followerId,
    this.followingId,
  });

  factory FollowSumAggregateOutputType.fromJson(Map json) =>
      FollowSumAggregateOutputType(
        id: json['id'],
        followerId: json['followerId'],
        followingId: json['followingId'],
      );

  final int? id;

  final int? followerId;

  final int? followingId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowMinAggregateOutputType {
  const FollowMinAggregateOutputType({
    this.id,
    this.followerId,
    this.followingId,
  });

  factory FollowMinAggregateOutputType.fromJson(Map json) =>
      FollowMinAggregateOutputType(
        id: json['id'],
        followerId: json['followerId'],
        followingId: json['followingId'],
      );

  final int? id;

  final int? followerId;

  final int? followingId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowMaxAggregateOutputType {
  const FollowMaxAggregateOutputType({
    this.id,
    this.followerId,
    this.followingId,
  });

  factory FollowMaxAggregateOutputType.fromJson(Map json) =>
      FollowMaxAggregateOutputType(
        id: json['id'],
        followerId: json['followerId'],
        followingId: json['followingId'],
      );

  final int? id;

  final int? followerId;

  final int? followingId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowGroupByOutputType {
  const FollowGroupByOutputType({
    this.id,
    this.followerId,
    this.followingId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory FollowGroupByOutputType.fromJson(Map json) => FollowGroupByOutputType(
    id: json['id'],
    followerId: json['followerId'],
    followingId: json['followingId'],
    $count: json['_count'] is Map
        ? _i2.FollowCountAggregateOutputType.fromJson(json['_count'])
        : null,
    $avg: json['_avg'] is Map
        ? _i2.FollowAvgAggregateOutputType.fromJson(json['_avg'])
        : null,
    $sum: json['_sum'] is Map
        ? _i2.FollowSumAggregateOutputType.fromJson(json['_sum'])
        : null,
    $min: json['_min'] is Map
        ? _i2.FollowMinAggregateOutputType.fromJson(json['_min'])
        : null,
    $max: json['_max'] is Map
        ? _i2.FollowMaxAggregateOutputType.fromJson(json['_max'])
        : null,
  );

  final int? id;

  final int? followerId;

  final int? followingId;

  final _i2.FollowCountAggregateOutputType? $count;

  final _i2.FollowAvgAggregateOutputType? $avg;

  final _i2.FollowSumAggregateOutputType? $sum;

  final _i2.FollowMinAggregateOutputType? $min;

  final _i2.FollowMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
    '_count': $count?.toJson(),
    '_avg': $avg?.toJson(),
    '_sum': $sum?.toJson(),
    '_min': $min?.toJson(),
    '_max': $max?.toJson(),
  };
}

class FollowCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCountOrderByAggregateInput({
    this.id,
    this.followerId,
    this.followingId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? followerId;

  final _i2.SortOrder? followingId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowAvgOrderByAggregateInput({
    this.id,
    this.followerId,
    this.followingId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? followerId;

  final _i2.SortOrder? followingId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowMaxOrderByAggregateInput({
    this.id,
    this.followerId,
    this.followingId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? followerId;

  final _i2.SortOrder? followingId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowMinOrderByAggregateInput({
    this.id,
    this.followerId,
    this.followingId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? followerId;

  final _i2.SortOrder? followingId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowSumOrderByAggregateInput({
    this.id,
    this.followerId,
    this.followingId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? followerId;

  final _i2.SortOrder? followingId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowOrderByWithAggregationInput({
    this.id,
    this.followerId,
    this.followingId,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? followerId;

  final _i2.SortOrder? followingId;

  final _i2.FollowCountOrderByAggregateInput? $count;

  final _i2.FollowAvgOrderByAggregateInput? $avg;

  final _i2.FollowMaxOrderByAggregateInput? $max;

  final _i2.FollowMinOrderByAggregateInput? $min;

  final _i2.FollowSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
    '_count': $count,
    '_avg': $avg,
    '_max': $max,
    '_min': $min,
    '_sum': $sum,
  };
}

class FollowScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.followerId,
    this.followingId,
  });

  final _i1.PrismaUnion<
    _i2.FollowScalarWhereWithAggregatesInput,
    Iterable<_i2.FollowScalarWhereWithAggregatesInput>
  >?
  AND;

  final Iterable<_i2.FollowScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<
    _i2.FollowScalarWhereWithAggregatesInput,
    Iterable<_i2.FollowScalarWhereWithAggregatesInput>
  >?
  NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? followerId;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? followingId;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCountAggregateOutputTypeSelect({
    this.id,
    this.followerId,
    this.followingId,
    this.$all,
  });

  final bool? id;

  final bool? followerId;

  final bool? followingId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
    '_all': $all,
  };
}

class FollowGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowGroupByOutputTypeCountArgs({this.select});

  final _i2.FollowCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FollowAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowAvgAggregateOutputTypeSelect({
    this.id,
    this.followerId,
    this.followingId,
  });

  final bool? id;

  final bool? followerId;

  final bool? followingId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowGroupByOutputTypeAvgArgs({this.select});

  final _i2.FollowAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FollowSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowSumAggregateOutputTypeSelect({
    this.id,
    this.followerId,
    this.followingId,
  });

  final bool? id;

  final bool? followerId;

  final bool? followingId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowGroupByOutputTypeSumArgs({this.select});

  final _i2.FollowSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FollowMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowMinAggregateOutputTypeSelect({
    this.id,
    this.followerId,
    this.followingId,
  });

  final bool? id;

  final bool? followerId;

  final bool? followingId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowGroupByOutputTypeMinArgs({this.select});

  final _i2.FollowMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FollowMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowMaxAggregateOutputTypeSelect({
    this.id,
    this.followerId,
    this.followingId,
  });

  final bool? id;

  final bool? followerId;

  final bool? followingId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
  };
}

class FollowGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowGroupByOutputTypeMaxArgs({this.select});

  final _i2.FollowMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FollowGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowGroupByOutputTypeSelect({
    this.id,
    this.followerId,
    this.followingId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? followerId;

  final bool? followingId;

  final _i1.PrismaUnion<bool, _i2.FollowGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.FollowGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.FollowGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.FollowGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.FollowGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'followerId': followerId,
    'followingId': followingId,
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}

class AggregateFollow {
  const AggregateFollow({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateFollow.fromJson(Map json) => AggregateFollow(
    $count: json['_count'] is Map
        ? _i2.FollowCountAggregateOutputType.fromJson(json['_count'])
        : null,
    $avg: json['_avg'] is Map
        ? _i2.FollowAvgAggregateOutputType.fromJson(json['_avg'])
        : null,
    $sum: json['_sum'] is Map
        ? _i2.FollowSumAggregateOutputType.fromJson(json['_sum'])
        : null,
    $min: json['_min'] is Map
        ? _i2.FollowMinAggregateOutputType.fromJson(json['_min'])
        : null,
    $max: json['_max'] is Map
        ? _i2.FollowMaxAggregateOutputType.fromJson(json['_max'])
        : null,
  );

  final _i2.FollowCountAggregateOutputType? $count;

  final _i2.FollowAvgAggregateOutputType? $avg;

  final _i2.FollowSumAggregateOutputType? $sum;

  final _i2.FollowMinAggregateOutputType? $min;

  final _i2.FollowMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
    '_count': $count?.toJson(),
    '_avg': $avg?.toJson(),
    '_sum': $sum?.toJson(),
    '_min': $min?.toJson(),
    '_max': $max?.toJson(),
  };
}

class AggregateFollowCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFollowCountArgs({this.select});

  final _i2.FollowCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFollowAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFollowAvgArgs({this.select});

  final _i2.FollowAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFollowSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFollowSumArgs({this.select});

  final _i2.FollowSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFollowMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFollowMinArgs({this.select});

  final _i2.FollowMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFollowMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFollowMaxArgs({this.select});

  final _i2.FollowMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFollowSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFollowSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateFollowCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateFollowAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateFollowSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateFollowMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateFollowMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}

class LikeCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeCreateInput({required this.post, required this.user});

  final _i2.PostCreateNestedOneWithoutLikeInput post;

  final _i2.UserCreateNestedOneWithoutLikeInput user;

  @override
  Map<String, dynamic> toJson() => {'post': post, 'user': user};
}

class LikeUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUncheckedCreateInput({
    this.id,
    required this.userId,
    required this.postId,
  });

  final int? id;

  final int userId;

  final int postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeCreateManyInput({
    this.id,
    required this.userId,
    required this.postId,
  });

  final int? id;

  final int userId;

  final int postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUpdateInput({this.post, this.user});

  final _i2.PostUpdateOneRequiredWithoutLikeNestedInput? post;

  final _i2.UserUpdateOneRequiredWithoutLikeNestedInput? user;

  @override
  Map<String, dynamic> toJson() => {'post': post, 'user': user};
}

class LikeUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUncheckedUpdateInput({this.id, this.userId, this.postId});

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUncheckedUpdateManyInput({this.id, this.userId, this.postId});

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeCountAggregateOutputType {
  const LikeCountAggregateOutputType({
    this.id,
    this.userId,
    this.postId,
    this.$all,
  });

  factory LikeCountAggregateOutputType.fromJson(Map json) =>
      LikeCountAggregateOutputType(
        id: json['id'],
        userId: json['userId'],
        postId: json['postId'],
        $all: json['_all'],
      );

  final int? id;

  final int? userId;

  final int? postId;

  final int? $all;

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
    '_all': $all,
  };
}

class LikeAvgAggregateOutputType {
  const LikeAvgAggregateOutputType({this.id, this.userId, this.postId});

  factory LikeAvgAggregateOutputType.fromJson(Map json) =>
      LikeAvgAggregateOutputType(
        id: json['id'],
        userId: json['userId'],
        postId: json['postId'],
      );

  final double? id;

  final double? userId;

  final double? postId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeSumAggregateOutputType {
  const LikeSumAggregateOutputType({this.id, this.userId, this.postId});

  factory LikeSumAggregateOutputType.fromJson(Map json) =>
      LikeSumAggregateOutputType(
        id: json['id'],
        userId: json['userId'],
        postId: json['postId'],
      );

  final int? id;

  final int? userId;

  final int? postId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeMinAggregateOutputType {
  const LikeMinAggregateOutputType({this.id, this.userId, this.postId});

  factory LikeMinAggregateOutputType.fromJson(Map json) =>
      LikeMinAggregateOutputType(
        id: json['id'],
        userId: json['userId'],
        postId: json['postId'],
      );

  final int? id;

  final int? userId;

  final int? postId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeMaxAggregateOutputType {
  const LikeMaxAggregateOutputType({this.id, this.userId, this.postId});

  factory LikeMaxAggregateOutputType.fromJson(Map json) =>
      LikeMaxAggregateOutputType(
        id: json['id'],
        userId: json['userId'],
        postId: json['postId'],
      );

  final int? id;

  final int? userId;

  final int? postId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeGroupByOutputType {
  const LikeGroupByOutputType({
    this.id,
    this.userId,
    this.postId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory LikeGroupByOutputType.fromJson(Map json) => LikeGroupByOutputType(
    id: json['id'],
    userId: json['userId'],
    postId: json['postId'],
    $count: json['_count'] is Map
        ? _i2.LikeCountAggregateOutputType.fromJson(json['_count'])
        : null,
    $avg: json['_avg'] is Map
        ? _i2.LikeAvgAggregateOutputType.fromJson(json['_avg'])
        : null,
    $sum: json['_sum'] is Map
        ? _i2.LikeSumAggregateOutputType.fromJson(json['_sum'])
        : null,
    $min: json['_min'] is Map
        ? _i2.LikeMinAggregateOutputType.fromJson(json['_min'])
        : null,
    $max: json['_max'] is Map
        ? _i2.LikeMaxAggregateOutputType.fromJson(json['_max'])
        : null,
  );

  final int? id;

  final int? userId;

  final int? postId;

  final _i2.LikeCountAggregateOutputType? $count;

  final _i2.LikeAvgAggregateOutputType? $avg;

  final _i2.LikeSumAggregateOutputType? $sum;

  final _i2.LikeMinAggregateOutputType? $min;

  final _i2.LikeMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
    '_count': $count?.toJson(),
    '_avg': $avg?.toJson(),
    '_sum': $sum?.toJson(),
    '_min': $min?.toJson(),
    '_max': $max?.toJson(),
  };
}

class LikeCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeCountOrderByAggregateInput({this.id, this.userId, this.postId});

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeAvgOrderByAggregateInput({this.id, this.userId, this.postId});

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeMaxOrderByAggregateInput({this.id, this.userId, this.postId});

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeMinOrderByAggregateInput({this.id, this.userId, this.postId});

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeSumOrderByAggregateInput({this.id, this.userId, this.postId});

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeOrderByWithAggregationInput({
    this.id,
    this.userId,
    this.postId,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? postId;

  final _i2.LikeCountOrderByAggregateInput? $count;

  final _i2.LikeAvgOrderByAggregateInput? $avg;

  final _i2.LikeMaxOrderByAggregateInput? $max;

  final _i2.LikeMinOrderByAggregateInput? $min;

  final _i2.LikeSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
    '_count': $count,
    '_avg': $avg,
    '_max': $max,
    '_min': $min,
    '_sum': $sum,
  };
}

class LikeScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.userId,
    this.postId,
  });

  final _i1.PrismaUnion<
    _i2.LikeScalarWhereWithAggregatesInput,
    Iterable<_i2.LikeScalarWhereWithAggregatesInput>
  >?
  AND;

  final Iterable<_i2.LikeScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<
    _i2.LikeScalarWhereWithAggregatesInput,
    Iterable<_i2.LikeScalarWhereWithAggregatesInput>
  >?
  NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? userId;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? postId;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeCountAggregateOutputTypeSelect({
    this.id,
    this.userId,
    this.postId,
    this.$all,
  });

  final bool? id;

  final bool? userId;

  final bool? postId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
    '_all': $all,
  };
}

class LikeGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeGroupByOutputTypeCountArgs({this.select});

  final _i2.LikeCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LikeAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeAvgAggregateOutputTypeSelect({this.id, this.userId, this.postId});

  final bool? id;

  final bool? userId;

  final bool? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeGroupByOutputTypeAvgArgs({this.select});

  final _i2.LikeAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LikeSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeSumAggregateOutputTypeSelect({this.id, this.userId, this.postId});

  final bool? id;

  final bool? userId;

  final bool? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeGroupByOutputTypeSumArgs({this.select});

  final _i2.LikeSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LikeMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeMinAggregateOutputTypeSelect({this.id, this.userId, this.postId});

  final bool? id;

  final bool? userId;

  final bool? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeGroupByOutputTypeMinArgs({this.select});

  final _i2.LikeMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LikeMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeMaxAggregateOutputTypeSelect({this.id, this.userId, this.postId});

  final bool? id;

  final bool? userId;

  final bool? postId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
  };
}

class LikeGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeGroupByOutputTypeMaxArgs({this.select});

  final _i2.LikeMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LikeGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeGroupByOutputTypeSelect({
    this.id,
    this.userId,
    this.postId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? userId;

  final bool? postId;

  final _i1.PrismaUnion<bool, _i2.LikeGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.LikeGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.LikeGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.LikeGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.LikeGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}

class AggregateLike {
  const AggregateLike({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateLike.fromJson(Map json) => AggregateLike(
    $count: json['_count'] is Map
        ? _i2.LikeCountAggregateOutputType.fromJson(json['_count'])
        : null,
    $avg: json['_avg'] is Map
        ? _i2.LikeAvgAggregateOutputType.fromJson(json['_avg'])
        : null,
    $sum: json['_sum'] is Map
        ? _i2.LikeSumAggregateOutputType.fromJson(json['_sum'])
        : null,
    $min: json['_min'] is Map
        ? _i2.LikeMinAggregateOutputType.fromJson(json['_min'])
        : null,
    $max: json['_max'] is Map
        ? _i2.LikeMaxAggregateOutputType.fromJson(json['_max'])
        : null,
  );

  final _i2.LikeCountAggregateOutputType? $count;

  final _i2.LikeAvgAggregateOutputType? $avg;

  final _i2.LikeSumAggregateOutputType? $sum;

  final _i2.LikeMinAggregateOutputType? $min;

  final _i2.LikeMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
    '_count': $count?.toJson(),
    '_avg': $avg?.toJson(),
    '_sum': $sum?.toJson(),
    '_min': $min?.toJson(),
    '_max': $max?.toJson(),
  };
}

class AggregateLikeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLikeCountArgs({this.select});

  final _i2.LikeCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLikeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLikeAvgArgs({this.select});

  final _i2.LikeAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLikeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLikeSumArgs({this.select});

  final _i2.LikeSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLikeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLikeMinArgs({this.select});

  final _i2.LikeMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLikeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLikeMaxArgs({this.select});

  final _i2.LikeMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLikeSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLikeSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateLikeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateLikeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateLikeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateLikeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateLikeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}

class PostCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateInput({
    required this.message,
    this.image,
    this.date,
    this.comment,
    this.like,
    required this.user,
  });

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final DateTime? date;

  final _i2.CommentCreateNestedManyWithoutPostInput? comment;

  final _i2.LikeCreateNestedManyWithoutPostInput? like;

  final _i2.UserCreateNestedOneWithoutPostInput user;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'image': image,
    'date': date,
    'comment': comment,
    'like': like,
    'user': user,
  };
}

class PostUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateInput({
    this.id,
    required this.message,
    this.image,
    this.date,
    required this.ownerId,
    this.comment,
    this.like,
  });

  final int? id;

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final DateTime? date;

  final int ownerId;

  final _i2.CommentUncheckedCreateNestedManyWithoutPostInput? comment;

  final _i2.LikeUncheckedCreateNestedManyWithoutPostInput? like;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    'comment': comment,
    'like': like,
  };
}

class PostCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateManyInput({
    this.id,
    required this.message,
    this.image,
    this.date,
    required this.ownerId,
  });

  final int? id;

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final DateTime? date;

  final int ownerId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
  };
}

class PostUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateInput({
    this.message,
    this.image,
    this.date,
    this.comment,
    this.like,
    this.user,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i2.CommentUpdateManyWithoutPostNestedInput? comment;

  final _i2.LikeUpdateManyWithoutPostNestedInput? like;

  final _i2.UserUpdateOneRequiredWithoutPostNestedInput? user;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'image': image,
    'date': date,
    'comment': comment,
    'like': like,
    'user': user,
  };
}

class PostUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateInput({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
    this.comment,
    this.like,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? ownerId;

  final _i2.CommentUncheckedUpdateManyWithoutPostNestedInput? comment;

  final _i2.LikeUncheckedUpdateManyWithoutPostNestedInput? like;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    'comment': comment,
    'like': like,
  };
}

class PostUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateManyInput({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? ownerId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
  };
}

class PostCountAggregateOutputType {
  const PostCountAggregateOutputType({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
    this.$all,
  });

  factory PostCountAggregateOutputType.fromJson(Map json) =>
      PostCountAggregateOutputType(
        id: json['id'],
        message: json['message'],
        image: json['image'],
        date: json['date'],
        ownerId: json['ownerId'],
        $all: json['_all'],
      );

  final int? id;

  final int? message;

  final int? image;

  final int? date;

  final int? ownerId;

  final int? $all;

  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    '_all': $all,
  };
}

class PostAvgAggregateOutputType {
  const PostAvgAggregateOutputType({this.id, this.ownerId});

  factory PostAvgAggregateOutputType.fromJson(Map json) =>
      PostAvgAggregateOutputType(id: json['id'], ownerId: json['ownerId']);

  final double? id;

  final double? ownerId;

  Map<String, dynamic> toJson() => {'id': id, 'ownerId': ownerId};
}

class PostSumAggregateOutputType {
  const PostSumAggregateOutputType({this.id, this.ownerId});

  factory PostSumAggregateOutputType.fromJson(Map json) =>
      PostSumAggregateOutputType(id: json['id'], ownerId: json['ownerId']);

  final int? id;

  final int? ownerId;

  Map<String, dynamic> toJson() => {'id': id, 'ownerId': ownerId};
}

class PostMinAggregateOutputType {
  const PostMinAggregateOutputType({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
  });

  factory PostMinAggregateOutputType.fromJson(Map json) =>
      PostMinAggregateOutputType(
        id: json['id'],
        message: json['message'],
        image: json['image'],
        date: switch (json['date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['date'],
        },
        ownerId: json['ownerId'],
      );

  final int? id;

  final String? message;

  final String? image;

  final DateTime? date;

  final int? ownerId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date?.toIso8601String(),
    'ownerId': ownerId,
  };
}

class PostMaxAggregateOutputType {
  const PostMaxAggregateOutputType({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
  });

  factory PostMaxAggregateOutputType.fromJson(Map json) =>
      PostMaxAggregateOutputType(
        id: json['id'],
        message: json['message'],
        image: json['image'],
        date: switch (json['date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['date'],
        },
        ownerId: json['ownerId'],
      );

  final int? id;

  final String? message;

  final String? image;

  final DateTime? date;

  final int? ownerId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date?.toIso8601String(),
    'ownerId': ownerId,
  };
}

class PostGroupByOutputType {
  const PostGroupByOutputType({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory PostGroupByOutputType.fromJson(Map json) => PostGroupByOutputType(
    id: json['id'],
    message: json['message'],
    image: json['image'],
    date: switch (json['date']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['date'],
    },
    ownerId: json['ownerId'],
    $count: json['_count'] is Map
        ? _i2.PostCountAggregateOutputType.fromJson(json['_count'])
        : null,
    $avg: json['_avg'] is Map
        ? _i2.PostAvgAggregateOutputType.fromJson(json['_avg'])
        : null,
    $sum: json['_sum'] is Map
        ? _i2.PostSumAggregateOutputType.fromJson(json['_sum'])
        : null,
    $min: json['_min'] is Map
        ? _i2.PostMinAggregateOutputType.fromJson(json['_min'])
        : null,
    $max: json['_max'] is Map
        ? _i2.PostMaxAggregateOutputType.fromJson(json['_max'])
        : null,
  );

  final int? id;

  final String? message;

  final String? image;

  final DateTime? date;

  final int? ownerId;

  final _i2.PostCountAggregateOutputType? $count;

  final _i2.PostAvgAggregateOutputType? $avg;

  final _i2.PostSumAggregateOutputType? $sum;

  final _i2.PostMinAggregateOutputType? $min;

  final _i2.PostMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date?.toIso8601String(),
    'ownerId': ownerId,
    '_count': $count?.toJson(),
    '_avg': $avg?.toJson(),
    '_sum': $sum?.toJson(),
    '_min': $min?.toJson(),
    '_max': $max?.toJson(),
  };
}

class PostCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCountOrderByAggregateInput({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? message;

  final _i2.SortOrder? image;

  final _i2.SortOrder? date;

  final _i2.SortOrder? ownerId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
  };
}

class PostAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostAvgOrderByAggregateInput({this.id, this.ownerId});

  final _i2.SortOrder? id;

  final _i2.SortOrder? ownerId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'ownerId': ownerId};
}

class PostMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostMaxOrderByAggregateInput({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? message;

  final _i2.SortOrder? image;

  final _i2.SortOrder? date;

  final _i2.SortOrder? ownerId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
  };
}

class PostMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostMinOrderByAggregateInput({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? message;

  final _i2.SortOrder? image;

  final _i2.SortOrder? date;

  final _i2.SortOrder? ownerId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
  };
}

class PostSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostSumOrderByAggregateInput({this.id, this.ownerId});

  final _i2.SortOrder? id;

  final _i2.SortOrder? ownerId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'ownerId': ownerId};
}

class PostOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostOrderByWithAggregationInput({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? message;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? image;

  final _i2.SortOrder? date;

  final _i2.SortOrder? ownerId;

  final _i2.PostCountOrderByAggregateInput? $count;

  final _i2.PostAvgOrderByAggregateInput? $avg;

  final _i2.PostMaxOrderByAggregateInput? $max;

  final _i2.PostMinOrderByAggregateInput? $min;

  final _i2.PostSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    '_count': $count,
    '_avg': $avg,
    '_max': $max,
    '_min': $min,
    '_sum': $sum,
  };
}

class NestedIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<
    int,
    _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>
  >?
  equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<
    int,
    _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>
  >?
  not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
  };
}

class NestedStringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.search,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>
  >?
  equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final String? search;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NestedStringNullableWithAggregatesFilter,
      _i1.PrismaNull
    >
  >?
  not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'contains': contains,
    'startsWith': startsWith,
    'endsWith': endsWith,
    'search': search,
    'not': not,
    '_count': $count,
    '_min': $min,
    '_max': $max,
  };
}

class StringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.search,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>
  >?
  equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final String? search;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NestedStringNullableWithAggregatesFilter,
      _i1.PrismaNull
    >
  >?
  not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'contains': contains,
    'startsWith': startsWith,
    'endsWith': endsWith,
    'search': search,
    'not': not,
    '_count': $count,
    '_min': $min,
    '_max': $max,
  };
}

class PostScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
  });

  final _i1.PrismaUnion<
    _i2.PostScalarWhereWithAggregatesInput,
    Iterable<_i2.PostScalarWhereWithAggregatesInput>
  >?
  AND;

  final Iterable<_i2.PostScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<
    _i2.PostScalarWhereWithAggregatesInput,
    Iterable<_i2.PostScalarWhereWithAggregatesInput>
  >?
  NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? message;

  final _i1.PrismaUnion<
    _i2.StringNullableWithAggregatesFilter,
    _i1.PrismaUnion<String, _i1.PrismaNull>
  >?
  image;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? date;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? ownerId;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
  };
}

class PostCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCountAggregateOutputTypeSelect({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
    this.$all,
  });

  final bool? id;

  final bool? message;

  final bool? image;

  final bool? date;

  final bool? ownerId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    '_all': $all,
  };
}

class PostGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostGroupByOutputTypeCountArgs({this.select});

  final _i2.PostCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostAvgAggregateOutputTypeSelect({this.id, this.ownerId});

  final bool? id;

  final bool? ownerId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'ownerId': ownerId};
}

class PostGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostGroupByOutputTypeAvgArgs({this.select});

  final _i2.PostAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostSumAggregateOutputTypeSelect({this.id, this.ownerId});

  final bool? id;

  final bool? ownerId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'ownerId': ownerId};
}

class PostGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostGroupByOutputTypeSumArgs({this.select});

  final _i2.PostSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostMinAggregateOutputTypeSelect({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
  });

  final bool? id;

  final bool? message;

  final bool? image;

  final bool? date;

  final bool? ownerId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
  };
}

class PostGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostGroupByOutputTypeMinArgs({this.select});

  final _i2.PostMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostMaxAggregateOutputTypeSelect({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
  });

  final bool? id;

  final bool? message;

  final bool? image;

  final bool? date;

  final bool? ownerId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
  };
}

class PostGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostGroupByOutputTypeMaxArgs({this.select});

  final _i2.PostMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostGroupByOutputTypeSelect({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? message;

  final bool? image;

  final bool? date;

  final bool? ownerId;

  final _i1.PrismaUnion<bool, _i2.PostGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.PostGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.PostGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.PostGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.PostGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}

class AggregatePost {
  const AggregatePost({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregatePost.fromJson(Map json) => AggregatePost(
    $count: json['_count'] is Map
        ? _i2.PostCountAggregateOutputType.fromJson(json['_count'])
        : null,
    $avg: json['_avg'] is Map
        ? _i2.PostAvgAggregateOutputType.fromJson(json['_avg'])
        : null,
    $sum: json['_sum'] is Map
        ? _i2.PostSumAggregateOutputType.fromJson(json['_sum'])
        : null,
    $min: json['_min'] is Map
        ? _i2.PostMinAggregateOutputType.fromJson(json['_min'])
        : null,
    $max: json['_max'] is Map
        ? _i2.PostMaxAggregateOutputType.fromJson(json['_max'])
        : null,
  );

  final _i2.PostCountAggregateOutputType? $count;

  final _i2.PostAvgAggregateOutputType? $avg;

  final _i2.PostSumAggregateOutputType? $sum;

  final _i2.PostMinAggregateOutputType? $min;

  final _i2.PostMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
    '_count': $count?.toJson(),
    '_avg': $avg?.toJson(),
    '_sum': $sum?.toJson(),
    '_min': $min?.toJson(),
    '_max': $max?.toJson(),
  };
}

class AggregatePostCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostCountArgs({this.select});

  final _i2.PostCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostAvgArgs({this.select});

  final _i2.PostAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostSumArgs({this.select});

  final _i2.PostSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostMinArgs({this.select});

  final _i2.PostMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostMaxArgs({this.select});

  final _i2.PostMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregatePostCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregatePostAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregatePostSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregatePostMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregatePostMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}

enum UserScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'user'),
  name$<String>('name', 'user'),
  lastname<String>('lastname', 'user'),
  username<String>('username', 'user'),
  createdAt<DateTime>('createdAt', 'user'),
  passwordHash<String>('passwordHash', 'user'),
  updatedAt<DateTime>('updatedAt', 'user');

  const UserScalar(this.name, this.model);

  @override
  final String name;

  @override
  final String model;
}

class UserCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateInput({
    required this.name,
    required this.lastname,
    required this.username,
    this.createdAt,
    required this.passwordHash,
    required this.updatedAt,
    this.comment,
    this.followFollowFollowerIdTouser,
    this.followFollowFollowingIdTouser,
    this.like,
    this.post,
  });

  final String name;

  final String lastname;

  final String username;

  final DateTime? createdAt;

  final String passwordHash;

  final DateTime updatedAt;

  final _i2.CommentCreateNestedManyWithoutUserInput? comment;

  final _i2.FollowCreateNestedManyWithoutUserFollowFollowerIdTouserInput?
  followFollowFollowerIdTouser;

  final _i2.FollowCreateNestedManyWithoutUserFollowFollowingIdTouserInput?
  followFollowFollowingIdTouser;

  final _i2.LikeCreateNestedManyWithoutUserInput? like;

  final _i2.PostCreateNestedManyWithoutUserInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
  };
}

class UserUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateInput({
    this.id,
    required this.name,
    required this.lastname,
    required this.username,
    this.createdAt,
    required this.passwordHash,
    required this.updatedAt,
    this.comment,
    this.followFollowFollowerIdTouser,
    this.followFollowFollowingIdTouser,
    this.like,
    this.post,
  });

  final int? id;

  final String name;

  final String lastname;

  final String username;

  final DateTime? createdAt;

  final String passwordHash;

  final DateTime updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutUserInput? comment;

  final _i2.FollowUncheckedCreateNestedManyWithoutUserFollowFollowerIdTouserInput?
  followFollowFollowerIdTouser;

  final _i2.FollowUncheckedCreateNestedManyWithoutUserFollowFollowingIdTouserInput?
  followFollowFollowingIdTouser;

  final _i2.LikeUncheckedCreateNestedManyWithoutUserInput? like;

  final _i2.PostUncheckedCreateNestedManyWithoutUserInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
  };
}

class UserCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateManyInput({
    this.id,
    required this.name,
    required this.lastname,
    required this.username,
    this.createdAt,
    required this.passwordHash,
    required this.updatedAt,
  });

  final int? id;

  final String name;

  final String lastname;

  final String username;

  final DateTime? createdAt;

  final String passwordHash;

  final DateTime updatedAt;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
  };
}

class UserUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateInput({
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
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  createdAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
  passwordHash;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  updatedAt;

  final _i2.CommentUpdateManyWithoutUserNestedInput? comment;

  final _i2.FollowUpdateManyWithoutUserFollowFollowerIdTouserNestedInput?
  followFollowFollowerIdTouser;

  final _i2.FollowUpdateManyWithoutUserFollowFollowingIdTouserNestedInput?
  followFollowFollowingIdTouser;

  final _i2.LikeUpdateManyWithoutUserNestedInput? like;

  final _i2.PostUpdateManyWithoutUserNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
  };
}

class UserUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateInput({
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
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  createdAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
  passwordHash;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutUserNestedInput? comment;

  final _i2.FollowUncheckedUpdateManyWithoutUserFollowFollowerIdTouserNestedInput?
  followFollowFollowerIdTouser;

  final _i2.FollowUncheckedUpdateManyWithoutUserFollowFollowingIdTouserNestedInput?
  followFollowFollowingIdTouser;

  final _i2.LikeUncheckedUpdateManyWithoutUserNestedInput? like;

  final _i2.PostUncheckedUpdateManyWithoutUserNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    'comment': comment,
    'follow_follow_followerIdTouser': followFollowFollowerIdTouser,
    'follow_follow_followingIdTouser': followFollowFollowingIdTouser,
    'like': like,
    'post': post,
  };
}

class UserUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateManyMutationInput({
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  createdAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
  passwordHash;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  updatedAt;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
  };
}

class UserUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  createdAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
  passwordHash;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
  updatedAt;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
  };
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
    this.$all,
  });

  factory UserCountAggregateOutputType.fromJson(Map json) =>
      UserCountAggregateOutputType(
        id: json['id'],
        name: json['name'],
        lastname: json['lastname'],
        username: json['username'],
        createdAt: json['createdAt'],
        passwordHash: json['passwordHash'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? name;

  final int? lastname;

  final int? username;

  final int? createdAt;

  final int? passwordHash;

  final int? updatedAt;

  final int? $all;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    '_all': $all,
  };
}

class UserAvgAggregateOutputType {
  const UserAvgAggregateOutputType({this.id});

  factory UserAvgAggregateOutputType.fromJson(Map json) =>
      UserAvgAggregateOutputType(id: json['id']);

  final double? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class UserSumAggregateOutputType {
  const UserSumAggregateOutputType({this.id});

  factory UserSumAggregateOutputType.fromJson(Map json) =>
      UserSumAggregateOutputType(id: json['id']);

  final int? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
  });

  factory UserMinAggregateOutputType.fromJson(Map json) =>
      UserMinAggregateOutputType(
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
      );

  final int? id;

  final String? name;

  final String? lastname;

  final String? username;

  final DateTime? createdAt;

  final String? passwordHash;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt?.toIso8601String(),
    'passwordHash': passwordHash,
    'updatedAt': updatedAt?.toIso8601String(),
  };
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
  });

  factory UserMaxAggregateOutputType.fromJson(Map json) =>
      UserMaxAggregateOutputType(
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
      );

  final int? id;

  final String? name;

  final String? lastname;

  final String? username;

  final DateTime? createdAt;

  final String? passwordHash;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt?.toIso8601String(),
    'passwordHash': passwordHash,
    'updatedAt': updatedAt?.toIso8601String(),
  };
}

class UserGroupByOutputType {
  const UserGroupByOutputType({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory UserGroupByOutputType.fromJson(Map json) => UserGroupByOutputType(
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
    $count: json['_count'] is Map
        ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
        : null,
    $avg: json['_avg'] is Map
        ? _i2.UserAvgAggregateOutputType.fromJson(json['_avg'])
        : null,
    $sum: json['_sum'] is Map
        ? _i2.UserSumAggregateOutputType.fromJson(json['_sum'])
        : null,
    $min: json['_min'] is Map
        ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
        : null,
    $max: json['_max'] is Map
        ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
        : null,
  );

  final int? id;

  final String? name;

  final String? lastname;

  final String? username;

  final DateTime? createdAt;

  final String? passwordHash;

  final DateTime? updatedAt;

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserAvgAggregateOutputType? $avg;

  final _i2.UserSumAggregateOutputType? $sum;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt?.toIso8601String(),
    'passwordHash': passwordHash,
    'updatedAt': updatedAt?.toIso8601String(),
    '_count': $count?.toJson(),
    '_avg': $avg?.toJson(),
    '_sum': $sum?.toJson(),
    '_min': $min?.toJson(),
    '_max': $max?.toJson(),
  };
}

class UserCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountOrderByAggregateInput({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? lastname;

  final _i2.SortOrder? username;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? passwordHash;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
  };
}

class UserAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserAvgOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? lastname;

  final _i2.SortOrder? username;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? passwordHash;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
  };
}

class UserMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinOrderByAggregateInput({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? lastname;

  final _i2.SortOrder? username;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? passwordHash;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
  };
}

class UserSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSumOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithAggregationInput({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? lastname;

  final _i2.SortOrder? username;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? passwordHash;

  final _i2.SortOrder? updatedAt;

  final _i2.UserCountOrderByAggregateInput? $count;

  final _i2.UserAvgOrderByAggregateInput? $avg;

  final _i2.UserMaxOrderByAggregateInput? $max;

  final _i2.UserMinOrderByAggregateInput? $min;

  final _i2.UserSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    '_count': $count,
    '_avg': $avg,
    '_max': $max,
    '_min': $min,
    '_sum': $sum,
  };
}

class UserScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
  });

  final _i1.PrismaUnion<
    _i2.UserScalarWhereWithAggregatesInput,
    Iterable<_i2.UserScalarWhereWithAggregatesInput>
  >?
  AND;

  final Iterable<_i2.UserScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<
    _i2.UserScalarWhereWithAggregatesInput,
    Iterable<_i2.UserScalarWhereWithAggregatesInput>
  >?
  NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? lastname;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? username;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? passwordHash;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
  };
}

class UserCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? name;

  final bool? lastname;

  final bool? username;

  final bool? createdAt;

  final bool? passwordHash;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    '_all': $all,
  };
}

class UserGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserAvgAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeAvgArgs({this.select});

  final _i2.UserAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSumAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeSumArgs({this.select});

  final _i2.UserSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
  });

  final bool? id;

  final bool? name;

  final bool? lastname;

  final bool? username;

  final bool? createdAt;

  final bool? passwordHash;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
  };
}

class UserGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
  });

  final bool? id;

  final bool? name;

  final bool? lastname;

  final bool? username;

  final bool? createdAt;

  final bool? passwordHash;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
  };
}

class UserGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeSelect({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.createdAt,
    this.passwordHash,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? name;

  final bool? lastname;

  final bool? username;

  final bool? createdAt;

  final bool? passwordHash;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'createdAt': createdAt,
    'passwordHash': passwordHash,
    'updatedAt': updatedAt,
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}

class AggregateUser {
  const AggregateUser({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateUser.fromJson(Map json) => AggregateUser(
    $count: json['_count'] is Map
        ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
        : null,
    $avg: json['_avg'] is Map
        ? _i2.UserAvgAggregateOutputType.fromJson(json['_avg'])
        : null,
    $sum: json['_sum'] is Map
        ? _i2.UserSumAggregateOutputType.fromJson(json['_sum'])
        : null,
    $min: json['_min'] is Map
        ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
        : null,
    $max: json['_max'] is Map
        ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
        : null,
  );

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserAvgAggregateOutputType? $avg;

  final _i2.UserSumAggregateOutputType? $sum;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
    '_count': $count?.toJson(),
    '_avg': $avg?.toJson(),
    '_sum': $sum?.toJson(),
    '_min': $min?.toJson(),
    '_max': $max?.toJson(),
  };
}

class AggregateUserCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserAvgArgs({this.select});

  final _i2.UserAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserSumArgs({this.select});

  final _i2.UserSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateUserCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateUserAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateUserSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}
