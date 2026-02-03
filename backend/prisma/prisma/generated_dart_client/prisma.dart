// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

class PostCountOutputType {
  const PostCountOutputType({this.likes});

  factory PostCountOutputType.fromJson(Map json) =>
      PostCountOutputType(likes: json['likes']);

  final int? likes;

  Map<String, dynamic> toJson() => {'likes': likes};
}

class UserCountOutputType {
  const UserCountOutputType({this.posts, this.likes});

  factory UserCountOutputType.fromJson(Map json) =>
      UserCountOutputType(posts: json['posts'], likes: json['likes']);

  final int? posts;

  final int? likes;

  Map<String, dynamic> toJson() => {'posts': posts, 'likes': likes};
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

class UserScalarRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserScalarRelationFilter({this.$is, this.isNot});

  final _i2.UserWhereInput? $is;

  final _i2.UserWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {'is': $is, 'isNot': isNot};
}

class PostScalarRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostScalarRelationFilter({this.$is, this.isNot});

  final _i2.PostWhereInput? $is;

  final _i2.PostWhereInput? isNot;

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
    this.user,
    this.post,
  });

  final _i1.PrismaUnion<_i2.LikeWhereInput, Iterable<_i2.LikeWhereInput>>? AND;

  final Iterable<_i2.LikeWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LikeWhereInput, Iterable<_i2.LikeWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? postId;

  final _i1.PrismaUnion<_i2.UserScalarRelationFilter, _i2.UserWhereInput>? user;

  final _i1.PrismaUnion<_i2.PostScalarRelationFilter, _i2.PostWhereInput>? post;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'userId': userId,
    'postId': postId,
    'user': user,
    'post': post,
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
    this.owner,
    this.likes,
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

  final _i1.PrismaUnion<_i2.UserScalarRelationFilter, _i2.UserWhereInput>?
  owner;

  final _i2.LikeListRelationFilter? likes;

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
    'owner': owner,
    'likes': likes,
  };
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
    this.password,
    this.posts,
    this.likes,
  });

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? lastname;

  final _i1.PrismaUnion<_i2.StringFilter, String>? username;

  final _i1.PrismaUnion<_i2.StringFilter, String>? password;

  final _i2.PostListRelationFilter? posts;

  final _i2.LikeListRelationFilter? likes;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
    'posts': posts,
    'likes': likes,
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
    this.password,
    this.posts,
    this.likes,
  });

  final int? id;

  final String? username;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? lastname;

  final _i1.PrismaUnion<_i2.StringFilter, String>? password;

  final _i2.PostListRelationFilter? posts;

  final _i2.LikeListRelationFilter? likes;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'username': username,
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'name': name,
    'lastname': lastname,
    'password': password,
    'posts': posts,
    'likes': likes,
  };
}

class PostOwnerArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostOwnerArgs({this.select, this.include});

  final _i2.UserSelect? select;

  final _i2.UserInclude? include;

  @override
  Map<String, dynamic> toJson() => {'select': select, 'include': include};
}

class LikeUserArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeUserArgs({this.select, this.include});

  final _i2.UserSelect? select;

  final _i2.UserInclude? include;

  @override
  Map<String, dynamic> toJson() => {'select': select, 'include': include};
}

class LikePostArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikePostArgs({this.select, this.include});

  final _i2.PostSelect? select;

  final _i2.PostInclude? include;

  @override
  Map<String, dynamic> toJson() => {'select': select, 'include': include};
}

class LikeSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeSelect({this.id, this.userId, this.postId, this.user, this.post});

  final bool? id;

  final bool? userId;

  final bool? postId;

  final _i1.PrismaUnion<bool, _i2.LikeUserArgs>? user;

  final _i1.PrismaUnion<bool, _i2.LikePostArgs>? post;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
    'user': user,
    'post': post,
  };
}

class LikeInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeInclude({this.user, this.post});

  final _i1.PrismaUnion<bool, _i2.LikeUserArgs>? user;

  final _i1.PrismaUnion<bool, _i2.LikePostArgs>? post;

  @override
  Map<String, dynamic> toJson() => {'user': user, 'post': post};
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

class PostOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostOrderByRelationAggregateInput({this.$count});

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

enum UserOrderByRelevanceFieldEnum implements _i1.PrismaEnum {
  name$._('name'),
  lastname._('lastname'),
  username._('username'),
  password._('password');

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
    this.password,
    this.posts,
    this.likes,
    this.$relevance,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? lastname;

  final _i2.SortOrder? username;

  final _i2.SortOrder? password;

  final _i2.PostOrderByRelationAggregateInput? posts;

  final _i2.LikeOrderByRelationAggregateInput? likes;

  final _i2.UserOrderByRelevanceInput? $relevance;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
    'posts': posts,
    'likes': likes,
    '_relevance': $relevance,
  };
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
    this.owner,
    this.likes,
    this.$relevance,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? message;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? image;

  final _i2.SortOrder? date;

  final _i2.SortOrder? ownerId;

  final _i2.UserOrderByWithRelationInput? owner;

  final _i2.LikeOrderByRelationAggregateInput? likes;

  final _i2.PostOrderByRelevanceInput? $relevance;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    'owner': owner,
    'likes': likes,
    '_relevance': $relevance,
  };
}

class LikeOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeOrderByWithRelationInput({
    this.id,
    this.userId,
    this.postId,
    this.user,
    this.post,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? postId;

  final _i2.UserOrderByWithRelationInput? user;

  final _i2.PostOrderByWithRelationInput? post;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'postId': postId,
    'user': user,
    'post': post,
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
    this.user,
    this.post,
  });

  final int? id;

  final _i2.LikeUserIdPostIdCompoundUniqueInput? userIdPostId;

  final _i1.PrismaUnion<_i2.LikeWhereInput, Iterable<_i2.LikeWhereInput>>? AND;

  final Iterable<_i2.LikeWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LikeWhereInput, Iterable<_i2.LikeWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? postId;

  final _i1.PrismaUnion<_i2.UserScalarRelationFilter, _i2.UserWhereInput>? user;

  final _i1.PrismaUnion<_i2.PostScalarRelationFilter, _i2.PostWhereInput>? post;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'userId_postId': userIdPostId,
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'userId': userId,
    'postId': postId,
    'user': user,
    'post': post,
  };
}

enum LikeScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'Like'),
  userId<int>('userId', 'Like'),
  postId<int>('postId', 'Like');

  const LikeScalar(this.name, this.model);

  @override
  final String name;

  @override
  final String model;
}

class PostLikesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikesArgs({
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

class PostCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCountOutputTypeSelect({this.likes});

  final bool? likes;

  @override
  Map<String, dynamic> toJson() => {'likes': likes};
}

class PostCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCountArgs({this.select});

  final _i2.PostCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostInclude({this.owner, this.likes, this.$count});

  final _i1.PrismaUnion<bool, _i2.PostOwnerArgs>? owner;

  final _i1.PrismaUnion<bool, _i2.PostLikesArgs>? likes;

  final _i1.PrismaUnion<bool, _i2.PostCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
    'owner': owner,
    'likes': likes,
    '_count': $count,
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
    this.owner,
    this.likes,
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

  final _i1.PrismaUnion<_i2.UserScalarRelationFilter, _i2.UserWhereInput>?
  owner;

  final _i2.LikeListRelationFilter? likes;

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
    'owner': owner,
    'likes': likes,
  };
}

enum PostScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'Post'),
  message<String>('message', 'Post'),
  image<String>('image', 'Post'),
  date<DateTime>('date', 'Post'),
  ownerId<int>('ownerId', 'Post');

  const PostScalar(this.name, this.model);

  @override
  final String name;

  @override
  final String model;
}

class UserPostsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserPostsArgs({
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

class UserLikesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserLikesArgs({
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

class UserCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountOutputTypeSelect({this.posts, this.likes});

  final bool? posts;

  final bool? likes;

  @override
  Map<String, dynamic> toJson() => {'posts': posts, 'likes': likes};
}

class UserCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountArgs({this.select});

  final _i2.UserCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserInclude({this.posts, this.likes, this.$count});

  final _i1.PrismaUnion<bool, _i2.UserPostsArgs>? posts;

  final _i1.PrismaUnion<bool, _i2.UserLikesArgs>? likes;

  final _i1.PrismaUnion<bool, _i2.UserCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
    'posts': posts,
    'likes': likes,
    '_count': $count,
  };
}

class PostSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostSelect({
    this.id,
    this.message,
    this.image,
    this.date,
    this.ownerId,
    this.owner,
    this.likes,
    this.$count,
  });

  final bool? id;

  final bool? message;

  final bool? image;

  final bool? date;

  final bool? ownerId;

  final _i1.PrismaUnion<bool, _i2.PostOwnerArgs>? owner;

  final _i1.PrismaUnion<bool, _i2.PostLikesArgs>? likes;

  final _i1.PrismaUnion<bool, _i2.PostCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    'owner': owner,
    'likes': likes,
    '_count': $count,
  };
}

class UserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSelect({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.password,
    this.posts,
    this.likes,
    this.$count,
  });

  final bool? id;

  final bool? name;

  final bool? lastname;

  final bool? username;

  final bool? password;

  final _i1.PrismaUnion<bool, _i2.UserPostsArgs>? posts;

  final _i1.PrismaUnion<bool, _i2.UserLikesArgs>? likes;

  final _i1.PrismaUnion<bool, _i2.UserCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
    'posts': posts,
    'likes': likes,
    '_count': $count,
  };
}

enum UserScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'User'),
  name$<String>('name', 'User'),
  lastname<String>('lastname', 'User'),
  username<String>('username', 'User'),
  password<String>('password', 'User');

  const UserScalar(this.name, this.model);

  @override
  final String name;

  @override
  final String model;
}

class UserCreateWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateWithoutLikesInput({
    required this.name,
    required this.lastname,
    required this.username,
    required this.password,
    this.posts,
  });

  final String name;

  final String lastname;

  final String username;

  final String password;

  final _i2.PostCreateNestedManyWithoutOwnerInput? posts;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
    'posts': posts,
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

class PostUncheckedCreateWithoutOwnerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateWithoutOwnerInput({
    this.id,
    required this.message,
    this.image,
    this.date,
    this.likes,
  });

  final int? id;

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final DateTime? date;

  final _i2.LikeUncheckedCreateNestedManyWithoutPostInput? likes;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'likes': likes,
  };
}

class PostCreateOrConnectWithoutOwnerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateOrConnectWithoutOwnerInput({
    required this.where,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutOwnerInput,
    _i2.PostUncheckedCreateWithoutOwnerInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class PostCreateManyOwnerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateManyOwnerInput({
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

class PostCreateManyOwnerInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateManyOwnerInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<
    _i2.PostCreateManyOwnerInput,
    Iterable<_i2.PostCreateManyOwnerInput>
  >
  data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
    'data': data,
    'skipDuplicates': skipDuplicates,
  };
}

class PostUncheckedCreateNestedManyWithoutOwnerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateNestedManyWithoutOwnerInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutOwnerInput,
    _i1.PrismaUnion<
      Iterable<_i2.PostCreateWithoutOwnerInput>,
      _i1.PrismaUnion<
        _i2.PostUncheckedCreateWithoutOwnerInput,
        Iterable<_i2.PostUncheckedCreateWithoutOwnerInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.PostCreateOrConnectWithoutOwnerInput,
    Iterable<_i2.PostCreateOrConnectWithoutOwnerInput>
  >?
  connectOrCreate;

  final _i2.PostCreateManyOwnerInputEnvelope? createMany;

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

class UserUncheckedCreateWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateWithoutLikesInput({
    this.id,
    required this.name,
    required this.lastname,
    required this.username,
    required this.password,
    this.posts,
  });

  final int? id;

  final String name;

  final String lastname;

  final String username;

  final String password;

  final _i2.PostUncheckedCreateNestedManyWithoutOwnerInput? posts;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
    'posts': posts,
  };
}

class UserCreateOrConnectWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateOrConnectWithoutLikesInput({
    required this.where,
    required this.create,
  });

  final _i2.UserWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutLikesInput,
    _i2.UserUncheckedCreateWithoutLikesInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class UserCreateNestedOneWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateNestedOneWithoutLikesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutLikesInput,
    _i2.UserUncheckedCreateWithoutLikesInput
  >?
  create;

  final _i2.UserCreateOrConnectWithoutLikesInput? connectOrCreate;

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

  final _i2.UserCreateNestedOneWithoutLikesInput user;

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

class PostCreateWithoutOwnerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateWithoutOwnerInput({
    required this.message,
    this.image,
    this.date,
    this.likes,
  });

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final DateTime? date;

  final _i2.LikeCreateNestedManyWithoutPostInput? likes;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'image': image,
    'date': date,
    'likes': likes,
  };
}

class PostCreateNestedManyWithoutOwnerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateNestedManyWithoutOwnerInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutOwnerInput,
    _i1.PrismaUnion<
      Iterable<_i2.PostCreateWithoutOwnerInput>,
      _i1.PrismaUnion<
        _i2.PostUncheckedCreateWithoutOwnerInput,
        Iterable<_i2.PostUncheckedCreateWithoutOwnerInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.PostCreateOrConnectWithoutOwnerInput,
    Iterable<_i2.PostCreateOrConnectWithoutOwnerInput>
  >?
  connectOrCreate;

  final _i2.PostCreateManyOwnerInputEnvelope? createMany;

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

class UserCreateWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateWithoutPostsInput({
    required this.name,
    required this.lastname,
    required this.username,
    required this.password,
    this.likes,
  });

  final String name;

  final String lastname;

  final String username;

  final String password;

  final _i2.LikeCreateNestedManyWithoutUserInput? likes;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
    'likes': likes,
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

class UserUncheckedCreateWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateWithoutPostsInput({
    this.id,
    required this.name,
    required this.lastname,
    required this.username,
    required this.password,
    this.likes,
  });

  final int? id;

  final String name;

  final String lastname;

  final String username;

  final String password;

  final _i2.LikeUncheckedCreateNestedManyWithoutUserInput? likes;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
    'likes': likes,
  };
}

class UserCreateOrConnectWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateOrConnectWithoutPostsInput({
    required this.where,
    required this.create,
  });

  final _i2.UserWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutPostsInput,
    _i2.UserUncheckedCreateWithoutPostsInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class UserCreateNestedOneWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateNestedOneWithoutPostsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutPostsInput,
    _i2.UserUncheckedCreateWithoutPostsInput
  >?
  create;

  final _i2.UserCreateOrConnectWithoutPostsInput? connectOrCreate;

  final _i2.UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'connect': connect,
  };
}

class PostCreateWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateWithoutLikesInput({
    required this.message,
    this.image,
    this.date,
    required this.owner,
  });

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final DateTime? date;

  final _i2.UserCreateNestedOneWithoutPostsInput owner;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'image': image,
    'date': date,
    'owner': owner,
  };
}

class PostUncheckedCreateWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateWithoutLikesInput({
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

class PostCreateOrConnectWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateOrConnectWithoutLikesInput({
    required this.where,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutLikesInput,
    _i2.PostUncheckedCreateWithoutLikesInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class PostCreateNestedOneWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateNestedOneWithoutLikesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutLikesInput,
    _i2.PostUncheckedCreateWithoutLikesInput
  >?
  create;

  final _i2.PostCreateOrConnectWithoutLikesInput? connectOrCreate;

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

  final _i2.PostCreateNestedOneWithoutLikesInput post;

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

class UserCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateInput({
    required this.name,
    required this.lastname,
    required this.username,
    required this.password,
    this.posts,
    this.likes,
  });

  final String name;

  final String lastname;

  final String username;

  final String password;

  final _i2.PostCreateNestedManyWithoutOwnerInput? posts;

  final _i2.LikeCreateNestedManyWithoutUserInput? likes;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
    'posts': posts,
    'likes': likes,
  };
}

class UserUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateInput({
    this.id,
    required this.name,
    required this.lastname,
    required this.username,
    required this.password,
    this.posts,
    this.likes,
  });

  final int? id;

  final String name;

  final String lastname;

  final String username;

  final String password;

  final _i2.PostUncheckedCreateNestedManyWithoutOwnerInput? posts;

  final _i2.LikeUncheckedCreateNestedManyWithoutUserInput? likes;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
    'posts': posts,
    'likes': likes,
  };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class UserCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateManyInput({
    this.id,
    required this.name,
    required this.lastname,
    required this.username,
    required this.password,
  });

  final int? id;

  final String name;

  final String lastname;

  final String username;

  final String password;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
  };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

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

class DateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFieldUpdateOperationsInput({this.set});

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class UserUpdateWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateWithoutLikesInput({
    this.name,
    this.lastname,
    this.username,
    this.password,
    this.posts,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i2.PostUpdateManyWithoutOwnerNestedInput? posts;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
    'posts': posts,
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

class PostUncheckedUpdateWithoutOwnerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateWithoutOwnerInput({
    this.id,
    this.message,
    this.image,
    this.date,
    this.likes,
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

  final _i2.LikeUncheckedUpdateManyWithoutPostNestedInput? likes;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'likes': likes,
  };
}

class PostUpdateWithWhereUniqueWithoutOwnerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithWhereUniqueWithoutOwnerInput({
    required this.where,
    required this.data,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.PostUpdateWithoutOwnerInput,
    _i2.PostUncheckedUpdateWithoutOwnerInput
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

class PostUncheckedUpdateManyWithoutOwnerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateManyWithoutOwnerInput({
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

class PostUpdateManyWithWhereWithoutOwnerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateManyWithWhereWithoutOwnerInput({
    required this.where,
    required this.data,
  });

  final _i2.PostScalarWhereInput where;

  final _i1.PrismaUnion<
    _i2.PostUpdateManyMutationInput,
    _i2.PostUncheckedUpdateManyWithoutOwnerInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class PostUncheckedUpdateManyWithoutOwnerNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateManyWithoutOwnerNestedInput({
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
    _i2.PostCreateWithoutOwnerInput,
    _i1.PrismaUnion<
      Iterable<_i2.PostCreateWithoutOwnerInput>,
      _i1.PrismaUnion<
        _i2.PostUncheckedCreateWithoutOwnerInput,
        Iterable<_i2.PostUncheckedCreateWithoutOwnerInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.PostCreateOrConnectWithoutOwnerInput,
    Iterable<_i2.PostCreateOrConnectWithoutOwnerInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.PostUpsertWithWhereUniqueWithoutOwnerInput,
    Iterable<_i2.PostUpsertWithWhereUniqueWithoutOwnerInput>
  >?
  upsert;

  final _i2.PostCreateManyOwnerInputEnvelope? createMany;

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
    _i2.PostUpdateWithWhereUniqueWithoutOwnerInput,
    Iterable<_i2.PostUpdateWithWhereUniqueWithoutOwnerInput>
  >?
  update;

  final _i1.PrismaUnion<
    _i2.PostUpdateManyWithWhereWithoutOwnerInput,
    Iterable<_i2.PostUpdateManyWithWhereWithoutOwnerInput>
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

class UserUncheckedUpdateWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateWithoutLikesInput({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.password,
    this.posts,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i2.PostUncheckedUpdateManyWithoutOwnerNestedInput? posts;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
    'posts': posts,
  };
}

class UserUpsertWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpsertWithoutLikesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<
    _i2.UserUpdateWithoutLikesInput,
    _i2.UserUncheckedUpdateWithoutLikesInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutLikesInput,
    _i2.UserUncheckedCreateWithoutLikesInput
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

class UserUpdateToOneWithWhereWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateToOneWithWhereWithoutLikesInput({
    this.where,
    required this.data,
  });

  final _i2.UserWhereInput? where;

  final _i1.PrismaUnion<
    _i2.UserUpdateWithoutLikesInput,
    _i2.UserUncheckedUpdateWithoutLikesInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class UserUpdateOneRequiredWithoutLikesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateOneRequiredWithoutLikesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutLikesInput,
    _i2.UserUncheckedCreateWithoutLikesInput
  >?
  create;

  final _i2.UserCreateOrConnectWithoutLikesInput? connectOrCreate;

  final _i2.UserUpsertWithoutLikesInput? upsert;

  final _i2.UserWhereUniqueInput? connect;

  final _i1.PrismaUnion<
    _i2.UserUpdateToOneWithWhereWithoutLikesInput,
    _i1.PrismaUnion<
      _i2.UserUpdateWithoutLikesInput,
      _i2.UserUncheckedUpdateWithoutLikesInput
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

  final _i2.UserUpdateOneRequiredWithoutLikesNestedInput? user;

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

class PostUpdateWithoutOwnerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithoutOwnerInput({
    this.message,
    this.image,
    this.date,
    this.likes,
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

  final _i2.LikeUpdateManyWithoutPostNestedInput? likes;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'image': image,
    'date': date,
    'likes': likes,
  };
}

class PostUpsertWithWhereUniqueWithoutOwnerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpsertWithWhereUniqueWithoutOwnerInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.PostUpdateWithoutOwnerInput,
    _i2.PostUncheckedUpdateWithoutOwnerInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutOwnerInput,
    _i2.PostUncheckedCreateWithoutOwnerInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'update': update,
    'create': create,
  };
}

class PostUpdateManyWithoutOwnerNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateManyWithoutOwnerNestedInput({
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
    _i2.PostCreateWithoutOwnerInput,
    _i1.PrismaUnion<
      Iterable<_i2.PostCreateWithoutOwnerInput>,
      _i1.PrismaUnion<
        _i2.PostUncheckedCreateWithoutOwnerInput,
        Iterable<_i2.PostUncheckedCreateWithoutOwnerInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.PostCreateOrConnectWithoutOwnerInput,
    Iterable<_i2.PostCreateOrConnectWithoutOwnerInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.PostUpsertWithWhereUniqueWithoutOwnerInput,
    Iterable<_i2.PostUpsertWithWhereUniqueWithoutOwnerInput>
  >?
  upsert;

  final _i2.PostCreateManyOwnerInputEnvelope? createMany;

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
    _i2.PostUpdateWithWhereUniqueWithoutOwnerInput,
    Iterable<_i2.PostUpdateWithWhereUniqueWithoutOwnerInput>
  >?
  update;

  final _i1.PrismaUnion<
    _i2.PostUpdateManyWithWhereWithoutOwnerInput,
    Iterable<_i2.PostUpdateManyWithWhereWithoutOwnerInput>
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

class UserUpdateWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateWithoutPostsInput({
    this.name,
    this.lastname,
    this.username,
    this.password,
    this.likes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i2.LikeUpdateManyWithoutUserNestedInput? likes;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
    'likes': likes,
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

class UserUncheckedUpdateWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateWithoutPostsInput({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.password,
    this.likes,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i2.LikeUncheckedUpdateManyWithoutUserNestedInput? likes;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
    'likes': likes,
  };
}

class UserUpsertWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpsertWithoutPostsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<
    _i2.UserUpdateWithoutPostsInput,
    _i2.UserUncheckedUpdateWithoutPostsInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutPostsInput,
    _i2.UserUncheckedCreateWithoutPostsInput
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

class UserUpdateToOneWithWhereWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateToOneWithWhereWithoutPostsInput({
    this.where,
    required this.data,
  });

  final _i2.UserWhereInput? where;

  final _i1.PrismaUnion<
    _i2.UserUpdateWithoutPostsInput,
    _i2.UserUncheckedUpdateWithoutPostsInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class UserUpdateOneRequiredWithoutPostsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateOneRequiredWithoutPostsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutPostsInput,
    _i2.UserUncheckedCreateWithoutPostsInput
  >?
  create;

  final _i2.UserCreateOrConnectWithoutPostsInput? connectOrCreate;

  final _i2.UserUpsertWithoutPostsInput? upsert;

  final _i2.UserWhereUniqueInput? connect;

  final _i1.PrismaUnion<
    _i2.UserUpdateToOneWithWhereWithoutPostsInput,
    _i1.PrismaUnion<
      _i2.UserUpdateWithoutPostsInput,
      _i2.UserUncheckedUpdateWithoutPostsInput
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

class PostUpdateWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithoutLikesInput({
    this.message,
    this.image,
    this.date,
    this.owner,
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

  final _i2.UserUpdateOneRequiredWithoutPostsNestedInput? owner;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'image': image,
    'date': date,
    'owner': owner,
  };
}

class PostUncheckedUpdateWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateWithoutLikesInput({
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

class PostUpsertWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpsertWithoutLikesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<
    _i2.PostUpdateWithoutLikesInput,
    _i2.PostUncheckedUpdateWithoutLikesInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutLikesInput,
    _i2.PostUncheckedCreateWithoutLikesInput
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

class PostUpdateToOneWithWhereWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateToOneWithWhereWithoutLikesInput({
    this.where,
    required this.data,
  });

  final _i2.PostWhereInput? where;

  final _i1.PrismaUnion<
    _i2.PostUpdateWithoutLikesInput,
    _i2.PostUncheckedUpdateWithoutLikesInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class PostUpdateOneRequiredWithoutLikesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateOneRequiredWithoutLikesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<
    _i2.PostCreateWithoutLikesInput,
    _i2.PostUncheckedCreateWithoutLikesInput
  >?
  create;

  final _i2.PostCreateOrConnectWithoutLikesInput? connectOrCreate;

  final _i2.PostUpsertWithoutLikesInput? upsert;

  final _i2.PostWhereUniqueInput? connect;

  final _i1.PrismaUnion<
    _i2.PostUpdateToOneWithWhereWithoutLikesInput,
    _i1.PrismaUnion<
      _i2.PostUpdateWithoutLikesInput,
      _i2.PostUncheckedUpdateWithoutLikesInput
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

  final _i2.PostUpdateOneRequiredWithoutLikesNestedInput? post;

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

class UserUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateInput({
    this.name,
    this.lastname,
    this.username,
    this.password,
    this.posts,
    this.likes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i2.PostUpdateManyWithoutOwnerNestedInput? posts;

  final _i2.LikeUpdateManyWithoutUserNestedInput? likes;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
    'posts': posts,
    'likes': likes,
  };
}

class UserUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateInput({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.password,
    this.posts,
    this.likes,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i2.PostUncheckedUpdateManyWithoutOwnerNestedInput? posts;

  final _i2.LikeUncheckedUpdateManyWithoutUserNestedInput? likes;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
    'posts': posts,
    'likes': likes,
  };
}

class UserUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateManyMutationInput({
    this.name,
    this.lastname,
    this.username,
    this.password,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
  };
}

class UserUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.password,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastname;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
  };
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.password,
    this.$all,
  });

  factory UserCountAggregateOutputType.fromJson(Map json) =>
      UserCountAggregateOutputType(
        id: json['id'],
        name: json['name'],
        lastname: json['lastname'],
        username: json['username'],
        password: json['password'],
        $all: json['_all'],
      );

  final int? id;

  final int? name;

  final int? lastname;

  final int? username;

  final int? password;

  final int? $all;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
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
    this.password,
  });

  factory UserMinAggregateOutputType.fromJson(Map json) =>
      UserMinAggregateOutputType(
        id: json['id'],
        name: json['name'],
        lastname: json['lastname'],
        username: json['username'],
        password: json['password'],
      );

  final int? id;

  final String? name;

  final String? lastname;

  final String? username;

  final String? password;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
  };
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.password,
  });

  factory UserMaxAggregateOutputType.fromJson(Map json) =>
      UserMaxAggregateOutputType(
        id: json['id'],
        name: json['name'],
        lastname: json['lastname'],
        username: json['username'],
        password: json['password'],
      );

  final int? id;

  final String? name;

  final String? lastname;

  final String? username;

  final String? password;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
  };
}

class UserGroupByOutputType {
  const UserGroupByOutputType({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.password,
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
    password: json['password'],
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

  final String? password;

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
    'password': password,
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
    this.password,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? lastname;

  final _i2.SortOrder? username;

  final _i2.SortOrder? password;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
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
    this.password,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? lastname;

  final _i2.SortOrder? username;

  final _i2.SortOrder? password;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
  };
}

class UserMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinOrderByAggregateInput({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.password,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? lastname;

  final _i2.SortOrder? username;

  final _i2.SortOrder? password;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
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
    this.password,
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

  final _i2.SortOrder? password;

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
    'password': password,
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
    this.password,
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

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? password;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
  };
}

class UserCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.lastname,
    this.username,
    this.password,
    this.$all,
  });

  final bool? id;

  final bool? name;

  final bool? lastname;

  final bool? username;

  final bool? password;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
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
    this.password,
  });

  final bool? id;

  final bool? name;

  final bool? lastname;

  final bool? username;

  final bool? password;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
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
    this.password,
  });

  final bool? id;

  final bool? name;

  final bool? lastname;

  final bool? username;

  final bool? password;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'lastname': lastname,
    'username': username,
    'password': password,
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
    this.password,
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

  final bool? password;

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
    'password': password,
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

class PostCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateInput({
    required this.message,
    this.image,
    this.date,
    required this.owner,
    this.likes,
  });

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final DateTime? date;

  final _i2.UserCreateNestedOneWithoutPostsInput owner;

  final _i2.LikeCreateNestedManyWithoutPostInput? likes;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'image': image,
    'date': date,
    'owner': owner,
    'likes': likes,
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
    this.likes,
  });

  final int? id;

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final DateTime? date;

  final int ownerId;

  final _i2.LikeUncheckedCreateNestedManyWithoutPostInput? likes;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    'likes': likes,
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
    this.owner,
    this.likes,
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

  final _i2.UserUpdateOneRequiredWithoutPostsNestedInput? owner;

  final _i2.LikeUpdateManyWithoutPostNestedInput? likes;

  @override
  Map<String, dynamic> toJson() => {
    'message': message,
    'image': image,
    'date': date,
    'owner': owner,
    'likes': likes,
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
    this.likes,
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

  final _i2.LikeUncheckedUpdateManyWithoutPostNestedInput? likes;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'image': image,
    'date': date,
    'ownerId': ownerId,
    'likes': likes,
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

class LikeCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LikeCreateInput({required this.user, required this.post});

  final _i2.UserCreateNestedOneWithoutLikesInput user;

  final _i2.PostCreateNestedOneWithoutLikesInput post;

  @override
  Map<String, dynamic> toJson() => {'user': user, 'post': post};
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
  const LikeUpdateInput({this.user, this.post});

  final _i2.UserUpdateOneRequiredWithoutLikesNestedInput? user;

  final _i2.PostUpdateOneRequiredWithoutLikesNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {'user': user, 'post': post};
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
