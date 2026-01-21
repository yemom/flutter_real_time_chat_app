import 'package:myfirst_flutter_project/data/service/base_service.dart';

class DeletePostService extends ServiceBase<void> {
  final int id;
  final String token;
  DeletePostService(this.id, this.token);

  @override
  Future<void> call() async {
    await delete('post', body: {'id': id}, token: token);
  }
}
