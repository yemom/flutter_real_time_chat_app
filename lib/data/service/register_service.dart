import 'package:myfirst_flutter_project/data/model/user.dart';
import 'package:myfirst_flutter_project/data/service/base_service.dart';

class RegisterService extends ServiceBase<User> {
  final String firstName;
  final String lastName;
  final String username;
  final String email;
  final String password;

  RegisterService({
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.password,
  });

  @override
  Future<User> call() async {
    final response = await post(
      'user',
      body: {
        'name': firstName,
        'lastname': lastName,
        'username': username,
        'email': email,
        'password': password,
      },
    );

    final userJson = response['user'] as Map<String, dynamic>;
    return User.fromJson(userJson);
  }
}
