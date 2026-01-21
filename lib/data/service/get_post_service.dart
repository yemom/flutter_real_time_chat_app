import 'package:myfirst_flutter_project/data/model/post.dart';
import 'package:myfirst_flutter_project/data/service/base_service.dart';

class GetPostService extends ServiceBase<List<Post>> {
  final String token;
  GetPostService(this.token);

  @override
  Future<List<Post>> call() async {
    final result = await get('post', token: token);
    return List.generate(
      result['data'].length,
      (index) => Post.fromJson(result['data'][index]),
    );
  }
}
