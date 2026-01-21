import 'package:myfirst_flutter_project/data/model/user.dart';

class LoginResponse {
  final User user;
  final String token;

  LoginResponse(this.user, this.token);
  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    User.fromJson(json['user'] as Map<String, dynamic>),
    json['token'] as String,
  );
}
