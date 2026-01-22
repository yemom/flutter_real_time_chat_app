import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/component/user_avatar.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/config/app_string.dart';
import 'package:myfirst_flutter_project/data/model/post.dart';
import 'package:myfirst_flutter_project/data/model/user.dart';
import 'package:myfirst_flutter_project/pages/login_page.dart' as AppConfig;
import 'package:myfirst_flutter_project/pages/tool_bar.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/provider/post_provider.dart';
import 'package:myfirst_flutter_project/style/app_text.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isFollowing = true;
  final Map<int, bool> _liked = {};
  final Map<int, int> _likeCount = {};
  final ImagePicker _picker = ImagePicker();
  File? _coverFile;

  String _displayName(User? user) {
    final first = user?.firstname?.trim() ?? '';
    final last = user?.lastname?.trim() ?? '';
    final combined = '$first $last'.trim();
    return combined.isEmpty ? 'Guest user' : combined;
  }

  int _postKey(Post post) => post.id ?? post.hashCode;

  void _toggleLike(Post post) {
    final key = _postKey(post);
    final current = _liked[key] ?? false;
    setState(() {
      _liked[key] = !current;
      final next = (_likeCount[key] ?? 0) + (current ? -1 : 1);
      _likeCount[key] = next < 0 ? 0 : next;
    });
  }

  Future<void> _commentOnPost(Post post) async {
    final controller = TextEditingController();
    final comment = await showDialog<String>(
      context: context,
      builder:
          (ctx) => AlertDialog(
            title: const Text('Add a comment'),
            content: TextField(
              controller: controller,
              maxLines: 3,
              decoration: const InputDecoration(
                hintText: 'Write something nice',
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(ctx).pop(controller.text.trim()),
                child: const Text('Post'),
              ),
            ],
          ),
    );
    if (comment == null || comment.isEmpty) return;
    if (!mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Comment posted.')));
  }

  void _sharePost(Post post) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Share link copied.')));
  }

  Future<void> _pickCoverImage() async {
    final picked = await _picker.pickImage(source: ImageSource.gallery);
    if (picked == null) return;
    setState(() => _coverFile = File(picked.path));
    if (!mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Cover image updated.')));
  }

  String _locationText(User? user) {
    // No location field available; reuse visibleGender as a placeholder if set.
    if (user?.visibleGender != null && user!.visibleGender!.isNotEmpty) {
      return user.visibleGender!;
    }
    return 'Add your city';
  }

  String _formattedNumber(int value) {
    if (value >= 1000) {
      final compact = (value / 1000).toStringAsFixed(value % 1000 == 0 ? 0 : 1);
      return '${compact}k';
    }
    return value.toString();
  }

  Future<void> _toggleFollow(AppRepo repo, String targetName) async {
    final token = repo.token;
    if (token == null || token.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please log in to follow users.')),
      );
      return;
    }
    setState(() => _isFollowing = !_isFollowing);
    final action = _isFollowing ? 'You are following' : 'You unfollowed';
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('$action $targetName')));
  }

  Future<void> _messageUser(AppRepo repo, String targetName) async {
    final token = repo.token;
    if (token == null || token.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please log in to send messages.')),
      );
      return;
    }
    final controller = TextEditingController();
    final message = await showDialog<String>(
      context: context,
      builder:
          (ctx) => AlertDialog(
            title: Text('Message $targetName'),
            content: TextField(
              controller: controller,
              maxLines: 3,
              decoration: const InputDecoration(hintText: 'Type your message'),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(ctx).pop(controller.text.trim()),
                child: const Text('Send'),
              ),
            ],
          ),
    );
    if (message == null || message.isEmpty) return;
    if (!mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Message sent to $targetName')));
  }

  Future<void> _editPost(
    BuildContext context,
    PostProvider provider,
    int id,
    String initial,
  ) async {
    final controller = TextEditingController(text: initial);
    final token = context.read<AppRepo>().token;
    if (token == null || token.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('You are not logged in.')));
      return;
    }
    final result = await showDialog<String>(
      context: context,
      builder:
          (ctx) => AlertDialog(
            title: const Text('Edit post'),
            content: TextField(
              controller: controller,
              maxLines: 3,
              decoration: const InputDecoration(hintText: 'Update your post'),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(ctx).pop(controller.text.trim()),
                child: const Text('Save'),
              ),
            ],
          ),
    );
    if (result == null || result.isEmpty) return;
    await provider.updatePost(id, token, newMessage: result);
    if (!context.mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Post updated.')));
  }

  Future<void> _deletePost(
    BuildContext context,
    PostProvider provider,
    int id,
  ) async {
    final token = context.read<AppRepo>().token;
    if (token == null || token.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('You are not logged in.')));
      return;
    }
    final confirm = await showDialog<bool>(
      context: context,
      builder:
          (ctx) => AlertDialog(
            title: const Text('Delete post'),
            content: const Text('Are you sure you want to delete this post?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(false),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(ctx).pop(true),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),
                child: const Text('Delete'),
              ),
            ],
          ),
    );
    if (confirm != true) return;
    await provider.deletePost(id, token);
    if (!context.mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Post deleted.')));
  }

  @override
  Widget build(BuildContext context) {
    final repo = context.watch<AppRepo>();
    final user = repo.user;
    final displayName = _displayName(user);
    final location = _locationText(user);
    return Consumer<PostProvider>(
      builder: (_, posts, __) {
        final mine = posts.list.where((p) => p.owner?.id == user?.id).toList();
        final postsCount = mine.length;
        const followersCount = 0; // No follower data available from API yet
        const followingCount = 0; // No following data available from API yet
        return Scaffold(
          appBar: ToolBar(
            title: 'profile',
            actions: [
              PopupMenuButton<ProfileMenu>(
                onSelected: (value) {
                  switch (value) {
                    case ProfileMenu.edit:
                      Navigator.of(context).pushNamed(AppRoute.editProfile);
                      break;
                    case ProfileMenu.logout:
                      Navigator.of(context).pushNamed(AppRoute.login);
                      break;
                    default:
                  }
                },
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      value: ProfileMenu.edit,
                      child: Text(AppString.edit),
                    ),
                    PopupMenuItem(
                      value: ProfileMenu.logout,
                      child: Text(AppString.logout),
                    ),
                  ];
                },
              ),
            ],
          ),
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 340,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 230,
                          decoration: BoxDecoration(
                            image:
                                _coverFile != null
                                    ? DecorationImage(
                                      image: FileImage(_coverFile!),
                                      fit: BoxFit.cover,
                                    )
                                    : null,
                            gradient:
                                _coverFile == null
                                    ? LinearGradient(
                                      colors: [
                                        AppColor.primaryBlue.withOpacity(0.9),
                                        AppColor.primaryBlue.withOpacity(0.6),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    )
                                    : null,
                          ),
                          foregroundDecoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.black.withOpacity(0.25),
                                Colors.black.withOpacity(0.05),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 36,
                          right: 12,
                          child: IconButton(
                            tooltip: 'Change cover photo',
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.2),
                              foregroundColor: Colors.white,
                            ),
                            onPressed: _pickCoverImage,
                            icon: const Icon(Icons.edit_outlined),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          right: 16,
                          top: 120,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 250),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 14,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    UserAvatar(size: 70),
                                    const SizedBox(width: 16),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            displayName,
                                            style: AppText.header2,
                                          ),
                                          const SizedBox(height: 6),
                                          Text(
                                            user?.mobile ??
                                                'Product Design & Development',
                                            style: AppText.subtitle3,
                                          ),
                                          const SizedBox(height: 6),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10,
                                              vertical: 6,
                                            ),
                                            decoration: BoxDecoration(
                                              color: AppColor.primaryBlue
                                                  .withOpacity(0.08),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: Text(
                                              location,
                                              style: AppText.subtitle3,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton.icon(
                                        onPressed:
                                            () => _toggleFollow(
                                              repo,
                                              displayName,
                                            ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              _isFollowing
                                                  ? AppColor.primaryBlue
                                                  : Colors.white,
                                          foregroundColor:
                                              _isFollowing
                                                  ? Colors.white
                                                  : AppColor.primaryBlue,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            side: BorderSide(
                                              color: AppColor.primaryBlue,
                                            ),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 12,
                                          ),
                                        ),
                                        icon: Icon(
                                          _isFollowing
                                              ? Icons.check
                                              : Icons.add,
                                        ),
                                        label: Text(
                                          _isFollowing ? 'Following' : 'Follow',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: OutlinedButton.icon(
                                        onPressed:
                                            () =>
                                                _messageUser(repo, displayName),
                                        style: OutlinedButton.styleFrom(
                                          side: BorderSide(
                                            color: AppColor.primaryBlue,
                                          ),
                                          foregroundColor: AppColor.primaryBlue,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 12,
                                          ),
                                        ),
                                        icon: const Icon(Icons.mail_outline),
                                        label: const Text('Message'),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 14),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    _StatChip(
                                      label: AppString.followers,
                                      value: _formattedNumber(followersCount),
                                    ),
                                    _StatChip(
                                      label: AppString.posts,
                                      value: _formattedNumber(postsCount),
                                    ),
                                    _StatChip(
                                      label: AppString.folowing,
                                      value: _formattedNumber(followingCount),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: const SizedBox(height: 50)),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('My posts', style: AppText.header2),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 260,
                          mainAxisExtent: 520,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                        ),
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final p = mine[index];
                      return _PostCard(
                        post: p,
                        isLiked: _liked[_postKey(p)] ?? false,
                        likeCount: _likeCount[_postKey(p)] ?? 0,
                        onLike: () => _toggleLike(p),
                        onComment: () => _commentOnPost(p),
                        onShare: () => _sharePost(p),
                        onEdit:
                            p.id == null
                                ? null
                                : () => _editPost(
                                  context,
                                  posts,
                                  p.id!,
                                  p.message ?? '',
                                ),
                        onDelete:
                            p.id == null
                                ? null
                                : () => _deletePost(context, posts, p.id!),
                      );
                    }, childCount: mine.length),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 30)),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _StatChip extends StatelessWidget {
  const _StatChip({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value, style: AppText.header2),
        const SizedBox(height: 4),
        Text(label, style: AppText.subtitle3),
      ],
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    required this.post,
    required this.isLiked,
    required this.likeCount,
    required this.onLike,
    required this.onComment,
    required this.onShare,
    required this.onEdit,
    required this.onDelete,
  });

  final Post post;
  final bool isLiked;
  final int likeCount;
  final VoidCallback onLike;
  final VoidCallback onComment;
  final VoidCallback onShare;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    final owner = post.owner;
    final initials = _initials(owner?.firstname ?? '', owner?.lastname ?? '');
    final name =
        ((owner?.firstname?.trim().isNotEmpty ?? false) ||
                (owner?.lastname?.trim().isNotEmpty ?? false))
            ? '${owner?.firstname ?? ''} ${owner?.lastname ?? ''}'.trim()
            : 'Unknown User';

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.grey.shade700,
                  child: Text(
                    initials,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: AppText.subtitle3),
                      if (post.date != null)
                        Text(
                          '${post.date!.year}/${post.date!.month.toString().padLeft(2, '0')}/${post.date!.day.toString().padLeft(2, '0')}',
                          style: AppText.subtitle3.copyWith(color: Colors.grey),
                        ),
                    ],
                  ),
                ),
                PopupMenuButton<String>(
                  onSelected: (value) {
                    switch (value) {
                      case 'edit':
                        onEdit?.call();
                        break;
                      case 'delete':
                        onDelete?.call();
                        break;
                    }
                  },
                  itemBuilder:
                      (context) => [
                        const PopupMenuItem(value: 'edit', child: Text('Edit')),
                        const PopupMenuItem(
                          value: 'delete',
                          child: Text('Delete'),
                        ),
                      ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            if (post.image != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 4 / 5,
                  child: Image.network(
                    '${AppConfig.baseUrl}${post.image}',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey.shade300,
                        alignment: Alignment.center,
                        child: const Text('Image unavailable'),
                      );
                    },
                  ),
                ),
              ),
            if (post.image != null) const SizedBox(height: 10),
            if ((post.message ?? '').isNotEmpty)
              Text(
                post.message!,
                style: AppText.subtitle3,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 6,
              alignment: WrapAlignment.spaceBetween,
              children: [
                _ActionButton(
                  icon: isLiked ? Icons.favorite : Icons.favorite_border,
                  label: likeCount > 0 ? '$likeCount Like' : 'Like',
                  color: isLiked ? Colors.redAccent : Colors.grey.shade700,
                  onTap: onLike,
                ),
                _ActionButton(
                  icon: Icons.mode_comment_outlined,
                  label: 'Comment',
                  onTap: onComment,
                ),
                _ActionButton(
                  icon: Icons.share_outlined,
                  label: 'Share',
                  onTap: onShare,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
    this.color,
  });

  final IconData icon;
  final String label;
  final Color? color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        child: Row(
          children: [
            Icon(icon, size: 16, color: color ?? Colors.grey.shade700),
            const SizedBox(width: 4),
            Text(
              label,
              style: AppText.subtitle3.copyWith(
                color: color ?? Colors.grey.shade700,
                fontSize: 12,
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
