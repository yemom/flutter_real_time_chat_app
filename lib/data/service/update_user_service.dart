import 'package:myfirst_flutter_project/data/model/user.dart';
import 'package:myfirst_flutter_project/data/service/base_service.dart';

class UpdateUserService extends ServiceBase<User> {
  final int id;
  final String token;
  final String? firstName;
  final String? lastName;
  final String? username;
  final String? password;

  UpdateUserService({
    required this.id,
    required this.token,
    this.firstName,
    this.lastName,
    this.username,
    this.password,
  });

  @override
  Future<User> call() async {
    final body = <String, dynamic>{
      'name': firstName,
      'lastname': lastName,
      'username': username,
      'password': password,
    }..removeWhere(
      (key, value) => value == null || (value is String && value.isEmpty),
    );

    final response = await put('user/$id', body: body, token: token);
    final userJson = (response['user'] ?? response) as Map<String, dynamic>;
    return User.fromJson(userJson);
  }
}
