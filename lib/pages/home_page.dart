import 'package:flutter/material.dart';

import 'package:myfirst_flutter_project/component/post_item.dart';
import 'package:myfirst_flutter_project/config/app_icon.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/config/app_string.dart';
import 'package:myfirst_flutter_project/config/app_config.dart';
import 'package:myfirst_flutter_project/data/model/post.dart';
import 'package:myfirst_flutter_project/data/model/chat.dart';
import 'package:myfirst_flutter_project/pages/tool_bar.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/provider/post_provider.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

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
            Flexible(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 13,
                  color: color ?? Colors.grey.shade700,
                ),
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
    final link =
        post.id != null
            ? '${AppConfig.baseUrl}/post/${post.id}'
            : '${AppConfig.baseUrl}${post.image ?? ''}';
    final text =
        (post.message?.trim().isNotEmpty ?? false)
            ? '${post.message!.trim()}\n$link'
            : link;
    Share.share(text, subject: 'Check this post');
  }

  Future<void> _messageOwner(Post post) async {
    final token = context.read<AppRepo>().token;
    if (token == null || token.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please log in to send messages.')),
      );
      return;
    }
    final owner = post.owner;
    if (owner == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No owner info for this post.')),
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
    final repo = context.read<AppRepo>();
    final me = repo.user;
    if (me != null) {
      final now = DateTime.now();
      // Outgoing bubble
      repo.addChat(Chat(message, me, now));
      // Echo as incoming so the thread and recent list show immediately.
      repo.addChat(
        Chat(message, owner, now.add(const Duration(milliseconds: 1))),
      );
      repo.markConversationRead(owner.id);
      Navigator.of(context).pushNamed(AppRoute.chat, arguments: owner);
    }
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
      body: Container(
        color: Colors.grey.shade100,
        child: Consumer<PostProvider>(
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

            final posts = value.list;
            return ListView(
              padding: const EdgeInsets.only(bottom: 24),
              children: [
                const SizedBox(height: 12),
                _StoryBar(posts: posts),
                const SizedBox(height: 12),
                if (posts.isEmpty)
                  const Padding(
                    padding: EdgeInsets.all(24),
                    child: Center(child: Text('No posts yet.')),
                  )
                else
                  ...List.generate(posts.length, (index) {
                    final post = posts[index];
                    final key = _postKey(post);
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PostItem(post: post),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 8,
                          ),
                          child: Row(
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
                              const SizedBox(width: 8),
                              _ActionButton(
                                icon: Icons.mode_comment_outlined,
                                label: 'Comment',
                                onTap: () => _commentOnPost(post),
                              ),
                              const SizedBox(width: 8),
                              _ActionButton(
                                icon: Icons.share_outlined,
                                label: 'Share',
                                onTap: () => _sharePost(post),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 6),
                      ],
                    );
                  }),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _StoryBar extends StatelessWidget {
  const _StoryBar({required this.posts});

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    final items = posts.take(6).toList();
    if (items.isEmpty) return const SizedBox.shrink();

    return SizedBox(
      height: 88,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        itemBuilder: (context, index) {
          final post = items[index];
          final initials = _initials(
            post.owner?.firstname ?? '',
            post.owner?.lastname ?? '',
          );
          return SizedBox(
            width: 72,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.deepOrangeAccent,
                      width: 2,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.grey.shade200,
                    child: Text(
                      initials,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  (post.owner?.firstname ?? 'User').split(' ').first,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemCount: items.length,
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
