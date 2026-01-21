import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/data/model/post.dart';
import 'package:myfirst_flutter_project/pages/login_page.dart' as AppConfig;
import 'package:myfirst_flutter_project/style/app_text.dart';

class PostItem extends StatelessWidget {
  final Post post;
  const PostItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoute.home);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.shade700,
                  child: Text(
                    _initials(
                      post.owner?.firstname ?? '',
                      post.owner?.lastname ?? '',
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  (post.owner?.firstname?.trim().isNotEmpty == true ||
                          post.owner?.lastname?.trim().isNotEmpty == true)
                      ? '${post.owner?.firstname ?? ''} ${post.owner?.lastname ?? ''}'
                          .trim()
                      : 'Unknown User',
                  style: AppText.subtitle3,
                ),
              ],
            ),
            if (post.image != null) ...[
              SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 4 / 5,
                  child: Image.network(
                    '${AppConfig.baseUrl}${post.image}',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey.shade800,
                        alignment: Alignment.center,
                        child: const Text(
                          'Image unavailable',
                          style: TextStyle(color: Colors.white70),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
            SizedBox(height: 12),
            Text(post.message ?? '', style: AppText.subtitle3),
          ],
        ),
      ),
    );
  }
}

String _initials(String first, String last) {
  final f = first.trim().isNotEmpty ? first.trim()[0] : '';
  final l = last.trim().isNotEmpty ? last.trim()[0] : '';
  final res = '$f$l'.toUpperCase();
  return res.isEmpty ? '?' : res;
}
