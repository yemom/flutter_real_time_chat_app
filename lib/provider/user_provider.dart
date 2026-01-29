import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/data/model/user.dart';
import 'package:myfirst_flutter_project/data/service/delete_user_service.dart';
import 'package:myfirst_flutter_project/data/service/get_all_user_service.dart';
import 'package:myfirst_flutter_project/data/service/update_user_service.dart';

class UserProvider extends ChangeNotifier {
  Future<List<User>> getAllUser() async {
    return await GetAllUserService().call();
  }

  Future<User> updateUser({
    required int id,
    required String token,
    String? firstName,
    String? lastName,
    String? username,
    String? password,
    double? lat,
    double? lng,
    String? locationName,
  }) async {
    final user =
        await UpdateUserService(
          id: id,
          token: token,
          firstName: firstName,
          lastName: lastName,
          username: username,
          password: password,
          lat: lat,
          lng: lng,
          locationName: locationName,
        ).call();
    return user;
  }

  Future<void> deleteUser({required int id, required String token}) async {
    await DeleteUserService(id: id, token: token).call();
  }
}
