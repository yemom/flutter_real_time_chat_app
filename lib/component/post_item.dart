import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/config/app_config.dart';
import 'package:myfirst_flutter_project/data/model/post.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';
import 'package:myfirst_flutter_project/style/app_text.dart';

class PostItem extends StatelessWidget {
  final Post post;
  final bool liked;
  final int likeCount;
  final int commentCount;
  final int shareCount;
  final VoidCallback onLike;
  final VoidCallback onComment;
  final VoidCallback onShare;

  const PostItem({
    super.key,
    required this.post,
    required this.liked,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
    required this.onLike,
    required this.onComment,
    required this.onShare,
  });

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

    return Card(
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
                style: AppText.subtitle3.copyWith(fontWeight: FontWeight.w600),
              ),
            const SizedBox(height: 10),
            Row(
              children: [
                _CountPill(
                  icon: liked ? Icons.favorite : Icons.favorite_border,
                  color: liked ? Colors.redAccent : AppColor.fontBody,
                  label: likeCount > 0 ? likeCount.toString() : 'Like',
                  onTap: onLike,
                ),
                const SizedBox(width: 12),
                _CountPill(
                  icon: Icons.mode_comment_outlined,
                  label: commentCount > 0 ? commentCount.toString() : 'Comment',
                  onTap: onComment,
                ),
                const SizedBox(width: 12),
                _CountPill(
                  icon: Icons.share_outlined,
                  label: shareCount > 0 ? shareCount.toString() : 'Share',
                  onTap: onShare,
                ),
                const Spacer(),
                Text(
                  timeLabel,
                  style: AppText.subtitle3.copyWith(color: AppColor.fontLight),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CountPill extends StatelessWidget {
  const _CountPill({
    required this.icon,
    required this.label,
    required this.onTap,
    this.color,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 18, color: color ?? AppColor.fontBody),
            const SizedBox(width: 6),
            Text(
              label,
              style: AppText.subtitle3.copyWith(
                color: color ?? AppColor.fontBody,
              ),
            ),
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
