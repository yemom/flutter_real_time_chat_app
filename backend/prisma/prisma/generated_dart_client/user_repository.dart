import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:orm/orm.dart' as orm;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

import 'client.dart';
import 'model.dart';
import 'prisma.dart';

class UserRepository {
  UserRepository(this._db);
  final PrismaClient _db;
  // log in th existing user check whatever the user is exist or not
  Future<User?> authUser({
    required String username,
    required String password,
  }) async {
    final user = await _db.user.findUnique(
      where: UserWhereUniqueInput(username: username),
    );
    if (user == null) {
      return null;
    }
    final hashed = _hashedPassword(password);
    if (user.password != hashed && user.password != password) {
      return null;
    }
    return user;
  }

  // create a new user
  Future<User?> createUser({
    required String name,
    required String lastname,
    required String username,
    required String password,
  }) async {
    final user = await _db.user.create(
      data: orm.PrismaUnion<UserCreateInput, UserUncheckedCreateInput>.$1(
        UserCreateInput(
          name: name,
          lastname: lastname,
          username: username,
          password: _hashedPassword(password),
        ),
      ),
    );
    return user;
  }

  //get all the user
  Future<List<User>> getAll() async {
    final list = await _db.user.findMany();
    return list.toList();
  }

  // update a user
  Future<User?> updateUser({
    required int id,
    String? name,
    String? lastname,
    String? username,
    String? password,
  }) async {
    try {
      final hashed = password != null ? _hashedPassword(password) : null;
      final data =
          orm.PrismaUnion<UserUpdateInput, UserUncheckedUpdateInput>.$1(
            UserUpdateInput(
              name:
                  name != null
                      ? orm.PrismaUnion<
                        String,
                        StringFieldUpdateOperationsInput
                      >.$1(name)
                      : null,
              lastname:
                  lastname != null
                      ? orm.PrismaUnion<
                        String,
                        StringFieldUpdateOperationsInput
                      >.$1(lastname)
                      : null,
              username:
                  username != null
                      ? orm.PrismaUnion<
                        String,
                        StringFieldUpdateOperationsInput
                      >.$1(username)
                      : null,
              password:
                  hashed != null
                      ? orm.PrismaUnion<
                        String,
                        StringFieldUpdateOperationsInput
                      >.$1(hashed)
                      : null,
            ),
          );

      return await _db.user.update(
        where: UserWhereUniqueInput(id: id),
        data: data,
      );
    } catch (_) {
      return null;
    }
  }

  // delete a user
  Future<bool> deleteUser(int id) async {
    try {
      await _db.user.delete(where: UserWhereUniqueInput(id: id));
      return true;
    } catch (_) {
      return false;
    }
  }

  // reset password by username (used for forgot password)
  Future<bool> resetPassword({
    required String username,
    required String newPassword,
  }) async {
    try {
      final hashed = _hashedPassword(newPassword);
      final updated = await _db.user.update(
        where: UserWhereUniqueInput(username: username),
        data: orm.PrismaUnion<UserUpdateInput, UserUncheckedUpdateInput>.$1(
          UserUpdateInput(
            password:
                orm.PrismaUnion<String, StringFieldUpdateOperationsInput>.$1(
                  hashed,
                ),
          ),
        ),
      );
      return updated != null;
    } catch (_) {
      return false;
    }
  }

  // Fetch a user by id
  Future<User?> getById(int id) async {
    return _db.user.findUnique(where: UserWhereUniqueInput(id: id));
  }

  //hash the password
  String _hashedPassword(String password) {
    final encodedPassword = utf8.encode(password);
    return sha256.convert(encodedPassword).toString();
  }
}

//fetch user token
int? fetchUserFromToken(String token) {
  try {
    final jwt = JWT.verify(token, SecretKey('1221'));
    return jwt.payload['userId'] as int;
  } on JWTException catch (_) {
    return null;
  }
}
