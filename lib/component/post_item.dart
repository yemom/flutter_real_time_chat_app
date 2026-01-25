import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/config/app_config.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/data/model/post.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';
import 'package:myfirst_flutter_project/style/app_text.dart';

class PostItem extends StatelessWidget {
  final Post post;
  const PostItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final ownerName =
        (post.owner?.firstname?.trim().isNotEmpty == true ||
                post.owner?.lastname?.trim().isNotEmpty == true)
            ? '${post.owner?.firstname ?? ''} ${post.owner?.lastname ?? ''}'
                .trim()
            : 'Unknown User';
    final handle = post.owner?.username ?? '@username';
    final date = post.date;
    final timeLabel =
        date == null
            ? ''
            : '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';

    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(AppRoute.home),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        elevation: 4,
        shadowColor: Colors.black12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey.shade300,
                    foregroundColor: AppColor.fontTitle,
                    child: Text(
                      _initials(
                        post.owner?.firstname ?? '',
                        post.owner?.lastname ?? '',
                      ),
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ownerName,
                          style: AppText.subtitle3.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          handle,
                          style: AppText.subtitle3.copyWith(
                            color: AppColor.fontLight,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.more_horiz, color: AppColor.fontBody),
                ],
              ),
              const SizedBox(height: 12),
              if (post.image != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: AspectRatio(
                    aspectRatio: 3 / 4,
                    child: Image.network(
                      '${AppConfig.baseUrl}${post.image}',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey.shade200,
                          alignment: Alignment.center,
                          child: const Text('Image unavailable'),
                        );
                      },
                    ),
                  ),
                ),
              if (post.image != null) const SizedBox(height: 12),
              if ((post.message ?? '').isNotEmpty)
                Text(
                  post.message!,
                  style: AppText.subtitle3.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              const SizedBox(height: 10),
              Row(
                children: [
                  _Stat(icon: Icons.favorite, label: '573'),
                  const SizedBox(width: 16),
                  _Stat(icon: Icons.mode_comment_outlined, label: '30'),
                  const SizedBox(width: 16),
                  const Icon(
                    Icons.send_outlined,
                    size: 18,
                    color: AppColor.fontBody,
                  ),
                  const Spacer(),
                  Text(
                    timeLabel.isEmpty ? '' : timeLabel,
                    style: AppText.subtitle3.copyWith(
                      color: AppColor.fontLight,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: AppColor.fontBody),
        const SizedBox(width: 6),
        Text(
          label,
          style: AppText.subtitle3.copyWith(color: AppColor.fontBody),
        ),
      ],
    );
  }
}

String _initials(String first, String last) {
  final f = first.trim().isNotEmpty ? first.trim()[0] : '';
  final l = last.trim().isNotEmpty ? last.trim()[0] : '';
  final res = '$f$l'.toUpperCase();
  return res.isEmpty ? '?' : res;
}
