import 'package:myfirst_flutter_project/data/service/base_service.dart';

class LikeService extends ServiceBase<Map<String, dynamic>> {
  final int postId;
  final String token;

  LikeService({required this.postId, required this.token});

  @override
  Future<Map<String, dynamic>> call() async {
    return await post('like', body: {'postId': postId}, token: token);
  }
}
