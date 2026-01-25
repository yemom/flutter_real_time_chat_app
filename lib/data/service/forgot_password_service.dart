import 'package:myfirst_flutter_project/data/service/base_service.dart';

class ForgotPasswordService extends ServiceBase<void> {
  final String username;
  final String newPassword;

  ForgotPasswordService({required this.username, required this.newPassword});

  @override
  Future<void> call() async {
    await put('auth', body: {'username': username, 'password': newPassword});
  }
}
