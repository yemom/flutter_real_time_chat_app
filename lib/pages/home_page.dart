import 'package:flutter/material.dart';

import 'package:myfirst_flutter_project/component/post_item.dart';
import 'package:myfirst_flutter_project/config/app_icon.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/config/app_string.dart';
import 'package:myfirst_flutter_project/data/model/post.dart';
import 'package:myfirst_flutter_project/pages/tool_bar.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/provider/post_provider.dart';
import 'package:provider/provider.dart';

class _ActionButton extends StatelessWidget {
  const _ActionButton({
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
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 18, color: color ?? Colors.grey.shade700),
            const SizedBox(width: 6),
            Text(
              label,
              style: TextStyle(
                fontSize: 13,
                color: color ?? Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Map<int, bool> _liked = {};
  final Map<int, int> _likeCount = {};

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

  Future<void> _messageOwner(Post post) async {
    final token = context.read<AppRepo>().token;
    if (token == null || token.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please log in to send messages.')),
      );
      return;
    }
    final controller = TextEditingController();
    final name =
        ((post.owner?.firstname?.trim().isNotEmpty ?? false) ||
                (post.owner?.lastname?.trim().isNotEmpty ?? false))
            ? '${post.owner?.firstname ?? ''} ${post.owner?.lastname ?? ''}'
                .trim()
            : 'this user';
    final message = await showDialog<String>(
      context: context,
      builder:
          (ctx) => AlertDialog(
            title: Text('Message $name'),
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
    ).showSnackBar(SnackBar(content: Text('Message sent to $name')));
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final token = context.read<AppRepo>().token;
      if (token != null && token.isNotEmpty) {
        context.read<PostProvider>().getPost(token);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: AppString.home,
        actions: [
          IconButton(
            tooltip: 'Logout',
            onPressed: () {
              // Clear session and go to login
              context.read<AppRepo>().token = null;
              context.read<AppRepo>().user = null;
              Navigator.of(context).pushReplacementNamed(AppRoute.login);
            },
            icon: const Icon(Icons.logout),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoute.nearby);
            },
            icon: AppIcon.svg(AppIcon.location),
          ),
        ],
      ),
      body: Consumer<PostProvider>(
        builder: (context, value, child) {
          if (value.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (value.error != null) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      value.error!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.redAccent),
                    ),
                  ),
                  const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: () {
                      final token = context.read<AppRepo>().token;
                      if (token != null && token.isNotEmpty) {
                        context.read<PostProvider>().getPost(token);
                      }
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }
          if (value.list.isEmpty) {
            return const Center(child: Text('No posts yet.'));
          }
          return ListView.separated(
            itemBuilder: (context, index) {
              final post = value.list[index];
              final key = _postKey(post);
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PostItem(post: post),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 12,
                      runSpacing: 8,
                      children: [
                        _ActionButton(
                          icon:
                              (_liked[key] ?? false)
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                          label:
                              (_likeCount[key] ?? 0) > 0
                                  ? '${_likeCount[key]} Like'
                                  : 'Like',
                          color:
                              (_liked[key] ?? false)
                                  ? Colors.redAccent
                                  : Colors.grey.shade700,
                          onTap: () => _toggleLike(post),
                        ),
                        _ActionButton(
                          icon: Icons.mode_comment_outlined,
                          label: 'Comment',
                          onTap: () => _commentOnPost(post),
                        ),
                        _ActionButton(
                          icon: Icons.share_outlined,
                          label: 'Share',
                          onTap: () => _sharePost(post),
                        ),
                        _ActionButton(
                          icon: Icons.mail_outline,
                          label: 'Message',
                          onTap: () => _messageOwner(post),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            itemCount: value.list.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 24);
            },
          );
        },
      ),
    );
  }
}
