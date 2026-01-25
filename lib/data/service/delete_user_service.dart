import 'package:myfirst_flutter_project/data/service/base_service.dart';

class DeleteUserService extends ServiceBase<void> {
  final int id;
  final String token;

  DeleteUserService({required this.id, required this.token});

  @override
  Future<void> call() async {
    await delete('user/$id', token: token);
  }
}
