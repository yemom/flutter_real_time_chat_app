// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/engines/binary.dart' as _i5;
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class UserDelegate {
  const UserDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.User?> findUnique({
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'findUniqueUser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.User> findUniqueOrThrow({
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'findUniqueUserOrThrow',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User?> findFirst({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.UserOrderByWithRelationInput>,
      _i3.UserOrderByWithRelationInput
    >?
    orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UserScalar, Iterable<_i3.UserScalar>>? distinct,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'findFirstUser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.User> findFirstOrThrow({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.UserOrderByWithRelationInput>,
      _i3.UserOrderByWithRelationInput
    >?
    orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UserScalar, Iterable<_i3.UserScalar>>? distinct,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'findFirstUserOrThrow',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.User>> findMany({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.UserOrderByWithRelationInput>,
      _i3.UserOrderByWithRelationInput
    >?
    orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UserScalar, Iterable<_i3.UserScalar>>? distinct,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.User>>(
      action: 'findManyUser',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.User.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.User> create({
    required _i1.PrismaUnion<_i3.UserCreateInput, _i3.UserUncheckedCreateInput>
    data,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'createOneUser',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.UserCreateManyInput,
      Iterable<_i3.UserCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyUser',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User?> update({
    required _i1.PrismaUnion<_i3.UserUpdateInput, _i3.UserUncheckedUpdateInput>
    data,
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'updateOneUser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.UserUpdateManyMutationInput,
      _i3.UserUncheckedUpdateManyInput
    >
    data,
    _i3.UserWhereInput? where,
    int? limit,
  }) {
    final args = {'data': data, 'where': where, 'limit': limit};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyUser',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User> upsert({
    required _i3.UserWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.UserCreateInput, _i3.UserUncheckedCreateInput>
    create,
    required _i1.PrismaUnion<_i3.UserUpdateInput, _i3.UserUncheckedUpdateInput>
    update,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'upsertOneUser',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User?> delete({
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'deleteOneUser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.UserWhereInput? where,
    int? limit,
  }) {
    final args = {'where': where, 'limit': limit};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyUser',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.UserGroupByOutputType>> groupBy({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.UserOrderByWithAggregationInput>,
      _i3.UserOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.UserScalar>, _i3.UserScalar> by,
    _i3.UserScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.UserGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.UserGroupByOutputType>>(
      action: 'groupByUser',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.UserGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateUser> aggregate({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.UserOrderByWithRelationInput>,
      _i3.UserOrderByWithRelationInput
    >?
    orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateUserSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateUser>(
      action: 'aggregateUser',
      result: result,
      factory: (e) => _i3.AggregateUser.fromJson(e),
    );
  }
}

class PostDelegate {
  const PostDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Post?> findUnique({
    required _i3.PostWhereUniqueInput where,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post?>(
      action: 'findUniquePost',
      result: result,
      factory: (e) => e != null ? _i2.Post.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Post> findUniqueOrThrow({
    required _i3.PostWhereUniqueInput where,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post>(
      action: 'findUniquePostOrThrow',
      result: result,
      factory: (e) => _i2.Post.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Post?> findFirst({
    _i3.PostWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.PostOrderByWithRelationInput>,
      _i3.PostOrderByWithRelationInput
    >?
    orderBy,
    _i3.PostWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostScalar, Iterable<_i3.PostScalar>>? distinct,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post?>(
      action: 'findFirstPost',
      result: result,
      factory: (e) => e != null ? _i2.Post.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Post> findFirstOrThrow({
    _i3.PostWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.PostOrderByWithRelationInput>,
      _i3.PostOrderByWithRelationInput
    >?
    orderBy,
    _i3.PostWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostScalar, Iterable<_i3.PostScalar>>? distinct,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post>(
      action: 'findFirstPostOrThrow',
      result: result,
      factory: (e) => _i2.Post.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Post>> findMany({
    _i3.PostWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.PostOrderByWithRelationInput>,
      _i3.PostOrderByWithRelationInput
    >?
    orderBy,
    _i3.PostWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostScalar, Iterable<_i3.PostScalar>>? distinct,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Post>>(
      action: 'findManyPost',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Post.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Post> create({
    required _i1.PrismaUnion<_i3.PostCreateInput, _i3.PostUncheckedCreateInput>
    data,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post>(
      action: 'createOnePost',
      result: result,
      factory: (e) => _i2.Post.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.PostCreateManyInput,
      Iterable<_i3.PostCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyPost',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Post?> update({
    required _i1.PrismaUnion<_i3.PostUpdateInput, _i3.PostUncheckedUpdateInput>
    data,
    required _i3.PostWhereUniqueInput where,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post?>(
      action: 'updateOnePost',
      result: result,
      factory: (e) => e != null ? _i2.Post.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.PostUpdateManyMutationInput,
      _i3.PostUncheckedUpdateManyInput
    >
    data,
    _i3.PostWhereInput? where,
    int? limit,
  }) {
    final args = {'data': data, 'where': where, 'limit': limit};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyPost',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Post> upsert({
    required _i3.PostWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.PostCreateInput, _i3.PostUncheckedCreateInput>
    create,
    required _i1.PrismaUnion<_i3.PostUpdateInput, _i3.PostUncheckedUpdateInput>
    update,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post>(
      action: 'upsertOnePost',
      result: result,
      factory: (e) => _i2.Post.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Post?> delete({
    required _i3.PostWhereUniqueInput where,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post?>(
      action: 'deleteOnePost',
      result: result,
      factory: (e) => e != null ? _i2.Post.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.PostWhereInput? where,
    int? limit,
  }) {
    final args = {'where': where, 'limit': limit};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyPost',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.PostGroupByOutputType>> groupBy({
    _i3.PostWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.PostOrderByWithAggregationInput>,
      _i3.PostOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.PostScalar>, _i3.PostScalar> by,
    _i3.PostScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.PostGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.PostGroupByOutputType>>(
      action: 'groupByPost',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.PostGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregatePost> aggregate({
    _i3.PostWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.PostOrderByWithRelationInput>,
      _i3.PostOrderByWithRelationInput
    >?
    orderBy,
    _i3.PostWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregatePostSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregatePost>(
      action: 'aggregatePost',
      result: result,
      factory: (e) => _i3.AggregatePost.fromJson(e),
    );
  }
}

class LikeDelegate {
  const LikeDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Like?> findUnique({
    required _i3.LikeWhereUniqueInput where,
    _i3.LikeSelect? select,
    _i3.LikeInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Like',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Like?>(
      action: 'findUniqueLike',
      result: result,
      factory: (e) => e != null ? _i2.Like.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Like> findUniqueOrThrow({
    required _i3.LikeWhereUniqueInput where,
    _i3.LikeSelect? select,
    _i3.LikeInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Like',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Like>(
      action: 'findUniqueLikeOrThrow',
      result: result,
      factory: (e) => _i2.Like.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Like?> findFirst({
    _i3.LikeWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.LikeOrderByWithRelationInput>,
      _i3.LikeOrderByWithRelationInput
    >?
    orderBy,
    _i3.LikeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LikeScalar, Iterable<_i3.LikeScalar>>? distinct,
    _i3.LikeSelect? select,
    _i3.LikeInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Like',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Like?>(
      action: 'findFirstLike',
      result: result,
      factory: (e) => e != null ? _i2.Like.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Like> findFirstOrThrow({
    _i3.LikeWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.LikeOrderByWithRelationInput>,
      _i3.LikeOrderByWithRelationInput
    >?
    orderBy,
    _i3.LikeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LikeScalar, Iterable<_i3.LikeScalar>>? distinct,
    _i3.LikeSelect? select,
    _i3.LikeInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Like',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Like>(
      action: 'findFirstLikeOrThrow',
      result: result,
      factory: (e) => _i2.Like.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Like>> findMany({
    _i3.LikeWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.LikeOrderByWithRelationInput>,
      _i3.LikeOrderByWithRelationInput
    >?
    orderBy,
    _i3.LikeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LikeScalar, Iterable<_i3.LikeScalar>>? distinct,
    _i3.LikeSelect? select,
    _i3.LikeInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Like',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Like>>(
      action: 'findManyLike',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Like.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Like> create({
    required _i1.PrismaUnion<_i3.LikeCreateInput, _i3.LikeUncheckedCreateInput>
    data,
    _i3.LikeSelect? select,
    _i3.LikeInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Like',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Like>(
      action: 'createOneLike',
      result: result,
      factory: (e) => _i2.Like.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.LikeCreateManyInput,
      Iterable<_i3.LikeCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Like',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyLike',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Like?> update({
    required _i1.PrismaUnion<_i3.LikeUpdateInput, _i3.LikeUncheckedUpdateInput>
    data,
    required _i3.LikeWhereUniqueInput where,
    _i3.LikeSelect? select,
    _i3.LikeInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Like',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Like?>(
      action: 'updateOneLike',
      result: result,
      factory: (e) => e != null ? _i2.Like.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.LikeUpdateManyMutationInput,
      _i3.LikeUncheckedUpdateManyInput
    >
    data,
    _i3.LikeWhereInput? where,
    int? limit,
  }) {
    final args = {'data': data, 'where': where, 'limit': limit};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Like',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyLike',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Like> upsert({
    required _i3.LikeWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.LikeCreateInput, _i3.LikeUncheckedCreateInput>
    create,
    required _i1.PrismaUnion<_i3.LikeUpdateInput, _i3.LikeUncheckedUpdateInput>
    update,
    _i3.LikeSelect? select,
    _i3.LikeInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Like',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Like>(
      action: 'upsertOneLike',
      result: result,
      factory: (e) => _i2.Like.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Like?> delete({
    required _i3.LikeWhereUniqueInput where,
    _i3.LikeSelect? select,
    _i3.LikeInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Like',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Like?>(
      action: 'deleteOneLike',
      result: result,
      factory: (e) => e != null ? _i2.Like.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.LikeWhereInput? where,
    int? limit,
  }) {
    final args = {'where': where, 'limit': limit};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Like',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyLike',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.LikeGroupByOutputType>> groupBy({
    _i3.LikeWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.LikeOrderByWithAggregationInput>,
      _i3.LikeOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.LikeScalar>, _i3.LikeScalar> by,
    _i3.LikeScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.LikeGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Like',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.LikeGroupByOutputType>>(
      action: 'groupByLike',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.LikeGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateLike> aggregate({
    _i3.LikeWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.LikeOrderByWithRelationInput>,
      _i3.LikeOrderByWithRelationInput
    >?
    orderBy,
    _i3.LikeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateLikeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Like',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateLike>(
      action: 'aggregateLike',
      result: result,
      factory: (e) => _i3.AggregateLike.fromJson(e),
    );
  }
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient({
    super.datasourceUrl,
    super.datasources,
    super.errorFormat,
    super.log,
    _i1.Engine? engine,
  }) : _engine = engine;

  static final datamodel = _i4.DataModel.fromJson({
    'enums': [],
    'models': [
      {
        'name': 'User',
        'dbName': null,
        'schema': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'nativeType': null,
            'default': {'name': 'autoincrement', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'lastname',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'username',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'password',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'posts',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Post',
            'nativeType': null,
            'relationName': 'PostToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'likes',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Like',
            'nativeType': null,
            'relationName': 'LikeToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Post',
        'dbName': null,
        'schema': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'nativeType': null,
            'default': {'name': 'autoincrement', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'message',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'image',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'date',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'nativeType': null,
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'owner',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'User',
            'nativeType': null,
            'relationName': 'PostToUser',
            'relationFromFields': ['ownerId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'ownerId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'likes',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Like',
            'nativeType': null,
            'relationName': 'LikeToPost',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Like',
        'dbName': null,
        'schema': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'nativeType': null,
            'default': {'name': 'autoincrement', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'User',
            'nativeType': null,
            'relationName': 'LikeToUser',
            'relationFromFields': ['userId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'userId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'post',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Post',
            'nativeType': null,
            'relationName': 'LikeToPost',
            'relationFromFields': ['postId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'postId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [
          ['userId', 'postId'],
        ],
        'uniqueIndexes': [
          {
            'name': null,
            'fields': ['userId', 'postId'],
          },
        ],
        'isGenerated': false,
      },
    ],
    'types': [],
    'indexes': [
      {
        'model': 'User',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'},
        ],
      },
      {
        'model': 'User',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'username'},
        ],
      },
      {
        'model': 'Post',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'},
        ],
      },
      {
        'model': 'Like',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'},
        ],
      },
      {
        'model': 'Like',
        'type': 'unique',
        'isDefinedOnField': false,
        'fields': [
          {'name': 'userId'},
          {'name': 'postId'},
        ],
      },
    ],
  });

  _i1.Engine? _engine;

  _i1.TransactionClient<PrismaClient>? _transaction;

  @override
  get $transaction {
    if (_transaction != null) return _transaction!;
    PrismaClient factory(_i1.TransactionClient<PrismaClient> transaction) {
      final client = PrismaClient(
        engine: $engine,
        datasources: $options.datasources,
        datasourceUrl: $options.datasourceUrl,
        errorFormat: $options.errorFormat,
        log: $options.logEmitter.definition,
      );
      client.$options.logEmitter = $options.logEmitter;
      client._transaction = transaction;

      return client;
    }

    return _transaction = _i1.TransactionClient<PrismaClient>($engine, factory);
  }

  @override
  get $engine => _engine ??= _i5.BinaryEngine(
    schema:
        '// This is your Prisma schema file,\n\ngenerator client {\n  provider = "dart run orm --prisma-cmd=npx prisma"\n  output   = "prisma/generated_dart_client"\n}\n\ndatasource db {\n  provider = "mysql"\n  url      = env("DATABASE_URL")\n}\n\nmodel User {\n  id       Int    @id @default(autoincrement())\n  name     String\n  lastname String\n  username String @unique\n  password String\n\n  posts Post[]\n  likes Like[]\n}\n\nmodel Post {\n  id      Int      @id @default(autoincrement())\n  message String\n  image   String?\n  date    DateTime @default(now())\n\n  owner   User @relation(fields: [ownerId], references: [id])\n  ownerId Int\n\n  likes Like[]\n}\n\nmodel Like {\n  id Int @id @default(autoincrement())\n\n  user   User @relation(fields: [userId], references: [id])\n  userId Int\n\n  post   Post @relation(fields: [postId], references: [id])\n  postId Int\n\n  @@unique([userId, postId])\n}\n',
    datasources: const {
      'db': _i1.Datasource(_i1.DatasourceType.environment, 'DATABASE_URL'),
    },
    options: $options,
  );

  @override
  get $datamodel => datamodel;

  UserDelegate get user => UserDelegate._(this);

  PostDelegate get post => PostDelegate._(this);

  LikeDelegate get like => LikeDelegate._(this);
}
