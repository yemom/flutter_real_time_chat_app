// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/engines/binary.dart' as _i5;
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class CommentDelegate {
  const CommentDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Comment?> findUnique({
    required _i3.CommentWhereUniqueInput where,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'comment',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Comment?>(
      action: 'findUniquecomment',
      result: result,
      factory: (e) => e != null ? _i2.Comment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Comment> findUniqueOrThrow({
    required _i3.CommentWhereUniqueInput where,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'comment',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Comment>(
      action: 'findUniquecommentOrThrow',
      result: result,
      factory: (e) => _i2.Comment.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Comment?> findFirst({
    _i3.CommentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.CommentOrderByWithRelationInput>,
      _i3.CommentOrderByWithRelationInput
    >?
    orderBy,
    _i3.CommentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CommentScalar, Iterable<_i3.CommentScalar>>? distinct,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
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
      modelName: 'comment',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Comment?>(
      action: 'findFirstcomment',
      result: result,
      factory: (e) => e != null ? _i2.Comment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Comment> findFirstOrThrow({
    _i3.CommentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.CommentOrderByWithRelationInput>,
      _i3.CommentOrderByWithRelationInput
    >?
    orderBy,
    _i3.CommentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CommentScalar, Iterable<_i3.CommentScalar>>? distinct,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
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
      modelName: 'comment',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Comment>(
      action: 'findFirstcommentOrThrow',
      result: result,
      factory: (e) => _i2.Comment.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Comment>> findMany({
    _i3.CommentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.CommentOrderByWithRelationInput>,
      _i3.CommentOrderByWithRelationInput
    >?
    orderBy,
    _i3.CommentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CommentScalar, Iterable<_i3.CommentScalar>>? distinct,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
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
      modelName: 'comment',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Comment>>(
      action: 'findManycomment',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Comment.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Comment> create({
    required _i1.PrismaUnion<
      _i3.CommentCreateInput,
      _i3.CommentUncheckedCreateInput
    >
    data,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'comment',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Comment>(
      action: 'createOnecomment',
      result: result,
      factory: (e) => _i2.Comment.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.CommentCreateManyInput,
      Iterable<_i3.CommentCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'comment',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManycomment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Comment?> update({
    required _i1.PrismaUnion<
      _i3.CommentUpdateInput,
      _i3.CommentUncheckedUpdateInput
    >
    data,
    required _i3.CommentWhereUniqueInput where,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'comment',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Comment?>(
      action: 'updateOnecomment',
      result: result,
      factory: (e) => e != null ? _i2.Comment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.CommentUpdateManyMutationInput,
      _i3.CommentUncheckedUpdateManyInput
    >
    data,
    _i3.CommentWhereInput? where,
    int? limit,
  }) {
    final args = {'data': data, 'where': where, 'limit': limit};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'comment',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManycomment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Comment> upsert({
    required _i3.CommentWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.CommentCreateInput,
      _i3.CommentUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.CommentUpdateInput,
      _i3.CommentUncheckedUpdateInput
    >
    update,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
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
      modelName: 'comment',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Comment>(
      action: 'upsertOnecomment',
      result: result,
      factory: (e) => _i2.Comment.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Comment?> delete({
    required _i3.CommentWhereUniqueInput where,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'comment',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Comment?>(
      action: 'deleteOnecomment',
      result: result,
      factory: (e) => e != null ? _i2.Comment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.CommentWhereInput? where,
    int? limit,
  }) {
    final args = {'where': where, 'limit': limit};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'comment',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManycomment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.CommentGroupByOutputType>> groupBy({
    _i3.CommentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.CommentOrderByWithAggregationInput>,
      _i3.CommentOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.CommentScalar>, _i3.CommentScalar> by,
    _i3.CommentScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.CommentGroupByOutputTypeSelect? select,
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
      modelName: 'comment',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.CommentGroupByOutputType>>(
      action: 'groupBycomment',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.CommentGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateComment> aggregate({
    _i3.CommentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.CommentOrderByWithRelationInput>,
      _i3.CommentOrderByWithRelationInput
    >?
    orderBy,
    _i3.CommentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateCommentSelect? select,
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
      modelName: 'comment',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateComment>(
      action: 'aggregatecomment',
      result: result,
      factory: (e) => _i3.AggregateComment.fromJson(e),
    );
  }
}

class FollowDelegate {
  const FollowDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Follow?> findUnique({
    required _i3.FollowWhereUniqueInput where,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'follow',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Follow?>(
      action: 'findUniquefollow',
      result: result,
      factory: (e) => e != null ? _i2.Follow.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Follow> findUniqueOrThrow({
    required _i3.FollowWhereUniqueInput where,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'follow',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Follow>(
      action: 'findUniquefollowOrThrow',
      result: result,
      factory: (e) => _i2.Follow.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Follow?> findFirst({
    _i3.FollowWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.FollowOrderByWithRelationInput>,
      _i3.FollowOrderByWithRelationInput
    >?
    orderBy,
    _i3.FollowWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.FollowScalar, Iterable<_i3.FollowScalar>>? distinct,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
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
      modelName: 'follow',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Follow?>(
      action: 'findFirstfollow',
      result: result,
      factory: (e) => e != null ? _i2.Follow.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Follow> findFirstOrThrow({
    _i3.FollowWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.FollowOrderByWithRelationInput>,
      _i3.FollowOrderByWithRelationInput
    >?
    orderBy,
    _i3.FollowWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.FollowScalar, Iterable<_i3.FollowScalar>>? distinct,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
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
      modelName: 'follow',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Follow>(
      action: 'findFirstfollowOrThrow',
      result: result,
      factory: (e) => _i2.Follow.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Follow>> findMany({
    _i3.FollowWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.FollowOrderByWithRelationInput>,
      _i3.FollowOrderByWithRelationInput
    >?
    orderBy,
    _i3.FollowWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.FollowScalar, Iterable<_i3.FollowScalar>>? distinct,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
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
      modelName: 'follow',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Follow>>(
      action: 'findManyfollow',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Follow.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Follow> create({
    required _i1.PrismaUnion<
      _i3.FollowCreateInput,
      _i3.FollowUncheckedCreateInput
    >
    data,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'follow',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Follow>(
      action: 'createOnefollow',
      result: result,
      factory: (e) => _i2.Follow.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.FollowCreateManyInput,
      Iterable<_i3.FollowCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'follow',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyfollow',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Follow?> update({
    required _i1.PrismaUnion<
      _i3.FollowUpdateInput,
      _i3.FollowUncheckedUpdateInput
    >
    data,
    required _i3.FollowWhereUniqueInput where,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'follow',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Follow?>(
      action: 'updateOnefollow',
      result: result,
      factory: (e) => e != null ? _i2.Follow.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.FollowUpdateManyMutationInput,
      _i3.FollowUncheckedUpdateManyInput
    >
    data,
    _i3.FollowWhereInput? where,
    int? limit,
  }) {
    final args = {'data': data, 'where': where, 'limit': limit};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'follow',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyfollow',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Follow> upsert({
    required _i3.FollowWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.FollowCreateInput,
      _i3.FollowUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.FollowUpdateInput,
      _i3.FollowUncheckedUpdateInput
    >
    update,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
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
      modelName: 'follow',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Follow>(
      action: 'upsertOnefollow',
      result: result,
      factory: (e) => _i2.Follow.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Follow?> delete({
    required _i3.FollowWhereUniqueInput where,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'follow',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Follow?>(
      action: 'deleteOnefollow',
      result: result,
      factory: (e) => e != null ? _i2.Follow.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.FollowWhereInput? where,
    int? limit,
  }) {
    final args = {'where': where, 'limit': limit};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'follow',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyfollow',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.FollowGroupByOutputType>> groupBy({
    _i3.FollowWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.FollowOrderByWithAggregationInput>,
      _i3.FollowOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.FollowScalar>, _i3.FollowScalar> by,
    _i3.FollowScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.FollowGroupByOutputTypeSelect? select,
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
      modelName: 'follow',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.FollowGroupByOutputType>>(
      action: 'groupByfollow',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.FollowGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateFollow> aggregate({
    _i3.FollowWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.FollowOrderByWithRelationInput>,
      _i3.FollowOrderByWithRelationInput
    >?
    orderBy,
    _i3.FollowWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateFollowSelect? select,
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
      modelName: 'follow',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateFollow>(
      action: 'aggregatefollow',
      result: result,
      factory: (e) => _i3.AggregateFollow.fromJson(e),
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
      modelName: 'like',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Like?>(
      action: 'findUniquelike',
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
      modelName: 'like',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Like>(
      action: 'findUniquelikeOrThrow',
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
      modelName: 'like',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Like?>(
      action: 'findFirstlike',
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
      modelName: 'like',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Like>(
      action: 'findFirstlikeOrThrow',
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
      modelName: 'like',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Like>>(
      action: 'findManylike',
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
      modelName: 'like',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Like>(
      action: 'createOnelike',
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
      modelName: 'like',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManylike',
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
      modelName: 'like',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Like?>(
      action: 'updateOnelike',
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
      modelName: 'like',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManylike',
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
      modelName: 'like',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Like>(
      action: 'upsertOnelike',
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
      modelName: 'like',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Like?>(
      action: 'deleteOnelike',
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
      modelName: 'like',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManylike',
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
      modelName: 'like',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.LikeGroupByOutputType>>(
      action: 'groupBylike',
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
      modelName: 'like',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateLike>(
      action: 'aggregatelike',
      result: result,
      factory: (e) => _i3.AggregateLike.fromJson(e),
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
      modelName: 'post',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post?>(
      action: 'findUniquepost',
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
      modelName: 'post',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post>(
      action: 'findUniquepostOrThrow',
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
      modelName: 'post',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post?>(
      action: 'findFirstpost',
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
      modelName: 'post',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post>(
      action: 'findFirstpostOrThrow',
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
      modelName: 'post',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Post>>(
      action: 'findManypost',
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
      modelName: 'post',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post>(
      action: 'createOnepost',
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
      modelName: 'post',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManypost',
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
      modelName: 'post',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post?>(
      action: 'updateOnepost',
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
      modelName: 'post',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManypost',
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
      modelName: 'post',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post>(
      action: 'upsertOnepost',
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
      modelName: 'post',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post?>(
      action: 'deleteOnepost',
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
      modelName: 'post',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManypost',
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
      modelName: 'post',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.PostGroupByOutputType>>(
      action: 'groupBypost',
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
      modelName: 'post',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregatePost>(
      action: 'aggregatepost',
      result: result,
      factory: (e) => _i3.AggregatePost.fromJson(e),
    );
  }
}

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
      modelName: 'user',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'findUniqueuser',
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
      modelName: 'user',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'findUniqueuserOrThrow',
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
      modelName: 'user',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'findFirstuser',
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
      modelName: 'user',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'findFirstuserOrThrow',
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
      modelName: 'user',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.User>>(
      action: 'findManyuser',
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
      modelName: 'user',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'createOneuser',
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
      modelName: 'user',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyuser',
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
      modelName: 'user',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'updateOneuser',
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
      modelName: 'user',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyuser',
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
      modelName: 'user',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'upsertOneuser',
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
      modelName: 'user',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'deleteOneuser',
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
      modelName: 'user',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyuser',
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
      modelName: 'user',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.UserGroupByOutputType>>(
      action: 'groupByuser',
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
      modelName: 'user',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateUser>(
      action: 'aggregateuser',
      result: result,
      factory: (e) => _i3.AggregateUser.fromJson(e),
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
        'name': 'comment',
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
          {
            'name': 'post',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'post',
            'nativeType': null,
            'relationName': 'commentTopost',
            'relationFromFields': ['postId'],
            'relationToFields': ['id'],
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
            'type': 'user',
            'nativeType': null,
            'relationName': 'commentTouser',
            'relationFromFields': ['userId'],
            'relationToFields': ['id'],
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
        'name': 'follow',
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
            'name': 'followerId',
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
            'name': 'followingId',
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
            'name': 'user_follow_followerIdTouser',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'user',
            'nativeType': null,
            'relationName': 'follow_followerIdTouser',
            'relationFromFields': ['followerId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user_follow_followingIdTouser',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'user',
            'nativeType': null,
            'relationName': 'follow_followingIdTouser',
            'relationFromFields': ['followingId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [
          ['followerId', 'followingId'],
        ],
        'uniqueIndexes': [
          {
            'name': null,
            'fields': ['followerId', 'followingId'],
          },
        ],
        'isGenerated': false,
      },
      {
        'name': 'like',
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
          {
            'name': 'post',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'post',
            'nativeType': null,
            'relationName': 'likeTopost',
            'relationFromFields': ['postId'],
            'relationToFields': ['id'],
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
            'type': 'user',
            'nativeType': null,
            'relationName': 'likeTouser',
            'relationFromFields': ['userId'],
            'relationToFields': ['id'],
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
      {
        'name': 'post',
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
            'name': 'comment',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'comment',
            'nativeType': null,
            'relationName': 'commentTopost',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'like',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'like',
            'nativeType': null,
            'relationName': 'likeTopost',
            'relationFromFields': [],
            'relationToFields': [],
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
            'type': 'user',
            'nativeType': null,
            'relationName': 'postTouser',
            'relationFromFields': ['ownerId'],
            'relationToFields': ['id'],
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
        'name': 'user',
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
            'name': 'createdAt',
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
            'name': 'passwordHash',
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
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'comment',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'comment',
            'nativeType': null,
            'relationName': 'commentTouser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'follow_follow_followerIdTouser',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'follow',
            'nativeType': null,
            'relationName': 'follow_followerIdTouser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'follow_follow_followingIdTouser',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'follow',
            'nativeType': null,
            'relationName': 'follow_followingIdTouser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'like',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'like',
            'nativeType': null,
            'relationName': 'likeTouser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'post',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'post',
            'nativeType': null,
            'relationName': 'postTouser',
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
    ],
    'types': [],
    'indexes': [
      {
        'model': 'comment',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'},
        ],
      },
      {
        'model': 'comment',
        'type': 'normal',
        'isDefinedOnField': false,
        'dbName': 'Comment_postId_fkey',
        'fields': [
          {'name': 'postId'},
        ],
      },
      {
        'model': 'comment',
        'type': 'normal',
        'isDefinedOnField': false,
        'dbName': 'Comment_userId_fkey',
        'fields': [
          {'name': 'userId'},
        ],
      },
      {
        'model': 'follow',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'},
        ],
      },
      {
        'model': 'follow',
        'type': 'normal',
        'isDefinedOnField': false,
        'dbName': 'Follow_followingId_fkey',
        'fields': [
          {'name': 'followingId'},
        ],
      },
      {
        'model': 'follow',
        'type': 'unique',
        'isDefinedOnField': false,
        'dbName': 'Follow_followerId_followingId_key',
        'fields': [
          {'name': 'followerId'},
          {'name': 'followingId'},
        ],
      },
      {
        'model': 'like',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'},
        ],
      },
      {
        'model': 'like',
        'type': 'normal',
        'isDefinedOnField': false,
        'dbName': 'Like_postId_fkey',
        'fields': [
          {'name': 'postId'},
        ],
      },
      {
        'model': 'like',
        'type': 'unique',
        'isDefinedOnField': false,
        'dbName': 'Like_userId_postId_key',
        'fields': [
          {'name': 'userId'},
          {'name': 'postId'},
        ],
      },
      {
        'model': 'post',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'},
        ],
      },
      {
        'model': 'post',
        'type': 'normal',
        'isDefinedOnField': false,
        'dbName': 'Post_ownerId_fkey',
        'fields': [
          {'name': 'ownerId'},
        ],
      },
      {
        'model': 'user',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'},
        ],
      },
      {
        'model': 'user',
        'type': 'unique',
        'isDefinedOnField': true,
        'dbName': 'User_username_key',
        'fields': [
          {'name': 'username'},
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
        'generator client {\n  provider = "dart run orm --prisma-cmd=npx prisma"\n  output   = "prisma/generated_dart_client"\n}\n\ndatasource db {\n  provider = "mysql"\n  url      = env("DATABASE_URL")\n}\n\nmodel comment {\n  id      Int      @id @default(autoincrement())\n  message String\n  date    DateTime @default(now())\n  userId  Int\n  postId  Int\n  post    post     @relation(fields: [postId], references: [id], map: "Comment_postId_fkey")\n  user    user     @relation(fields: [userId], references: [id], map: "Comment_userId_fkey")\n\n  @@index([postId], map: "Comment_postId_fkey")\n  @@index([userId], map: "Comment_userId_fkey")\n}\n\nmodel follow {\n  id                            Int  @id @default(autoincrement())\n  followerId                    Int\n  followingId                   Int\n  user_follow_followerIdTouser  user @relation("follow_followerIdTouser", fields: [followerId], references: [id], map: "Follow_followerId_fkey")\n  user_follow_followingIdTouser user @relation("follow_followingIdTouser", fields: [followingId], references: [id], map: "Follow_followingId_fkey")\n\n  @@unique([followerId, followingId], map: "Follow_followerId_followingId_key")\n  @@index([followingId], map: "Follow_followingId_fkey")\n}\n\nmodel like {\n  id     Int  @id @default(autoincrement())\n  userId Int\n  postId Int\n  post   post @relation(fields: [postId], references: [id], map: "Like_postId_fkey")\n  user   user @relation(fields: [userId], references: [id], map: "Like_userId_fkey")\n\n  @@unique([userId, postId], map: "Like_userId_postId_key")\n  @@index([postId], map: "Like_postId_fkey")\n}\n\nmodel post {\n  id      Int       @id @default(autoincrement())\n  message String\n  image   String?\n  date    DateTime  @default(now())\n  ownerId Int\n  comment comment[]\n  like    like[]\n  user    user      @relation(fields: [ownerId], references: [id], map: "Post_ownerId_fkey")\n\n  @@index([ownerId], map: "Post_ownerId_fkey")\n}\n\nmodel user {\n  id                              Int       @id @default(autoincrement())\n  name                            String\n  lastname                        String\n  username                        String    @unique(map: "User_username_key")\n  createdAt                       DateTime  @default(now())\n  passwordHash                    String\n  updatedAt                       DateTime\n  comment                         comment[]\n  follow_follow_followerIdTouser  follow[]  @relation("follow_followerIdTouser")\n  follow_follow_followingIdTouser follow[]  @relation("follow_followingIdTouser")\n  like                            like[]\n  post                            post[]\n}\n',
    datasources: const {
      'db': _i1.Datasource(
        _i1.DatasourceType.url,
        'mysql://root:yemom12@localhost:3306/mydb',
      ),
    },
    options: $options,
  );

  @override
  get $datamodel => datamodel;

  CommentDelegate get comment => CommentDelegate._(this);

  FollowDelegate get follow => FollowDelegate._(this);

  LikeDelegate get like => LikeDelegate._(this);

  PostDelegate get post => PostDelegate._(this);

  UserDelegate get user => UserDelegate._(this);
}
