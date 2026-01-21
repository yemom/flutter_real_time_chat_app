import 'package:myfirst_flutter_project/data/service/base_service.dart';

class UploadService extends ServiceBase<String> {
  final String path;
  final String? token;

  UploadService(this.path, [this.token]);

  @override
  Future<String> call() async {
    final result = await upload('upload', 'photo', path, token: token);
    return result['data']['url'];
  }
}
