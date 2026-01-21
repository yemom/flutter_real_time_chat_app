import 'package:myfirst_flutter_project/data/service/base_service.dart';

class UpdatePostService extends ServiceBase<void> {
  final int id;
  final String? message;
  final String? image;
  final String token;

  UpdatePostService(this.id, this.message, this.image, this.token);

  @override
  Future<void> call() async {
    final Map<String, dynamic> body = {'id': id};
    if (message != null) body['message'] = message;
    if (image != null) body['image'] = image;
    await put('post', body: body, token: token);
  }
}
