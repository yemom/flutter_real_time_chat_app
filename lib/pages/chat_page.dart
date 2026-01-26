import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/component/chat_me_itom.dart';
import 'package:myfirst_flutter_project/component/chat_other_item.dart';
import 'package:myfirst_flutter_project/data/model/chat.dart';
import 'package:myfirst_flutter_project/data/model/user.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';
import 'package:provider/provider.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key, required this.peer});

  final User peer;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _controller = TextEditingController();
  final _scroll = ScrollController();

  void _send() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    final repo = context.read<AppRepo>();
    final me = repo.user;
    if (me == null) return;
    repo.addChat(Chat(text, me, DateTime.now()));
    _controller.clear();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scroll.hasClients) {
        _scroll.animateTo(
          _scroll.position.maxScrollExtent + 80,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final repo = context.watch<AppRepo>();
    final me = repo.user;
    final peer = widget.peer;
    final items = repo.chats
        .where((c) => c.user.id == peer.id || c.user.id == me?.id)
        .toList();
    items.sort((a, b) => a.time.compareTo(b.time));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      repo.markConversationRead(peer.id);
    });

    final name =
        peer.username ?? '${peer.firstname ?? ''} ${peer.lastname ?? ''}'.trim();
    const background = AppColor.background;

    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        backgroundColor: background,
        elevation: 0,
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          children: [
            const SizedBox(width: 6),
            const CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: Colors.grey),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name.isEmpty ? 'Chat' : name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  'Online now',
                  style: TextStyle(color: Colors.green, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.more_vert, color: Colors.grey),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26),
                  ),
                ),
                child: ListView.builder(
                  controller: _scroll,
                  padding: const EdgeInsets.fromLTRB(12, 16, 12, 12),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final chat = items[index];
                    final timeLabel = _formatTime(chat.time);
                    final senderName = _displayName(chat.user);
                    if (chat.user.id == me?.id) {
                      return ChatMeItem(chat: chat, timeLabel: timeLabel);
                    }
                    return ChatOtherItem(
                      chat: chat,
                      timeLabel: timeLabel,
                      senderName: senderName,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Type a message',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                      ),
                      onSubmitted: (_) => _send(),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFFF8DA1),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      tooltip: 'Send',
                      onPressed: _send,
                      icon: const Icon(Icons.send_rounded, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String _formatTime(DateTime dt) {
  final now = DateTime.now();
  final diff = now.difference(dt);
  if (diff.inMinutes < 1) return 'Just now';
  if (diff.inMinutes < 60) return '${diff.inMinutes} min ago';
  if (diff.inHours < 24) return '${diff.inHours} hr ago';
  final d = DateTime(dt.year, dt.month, dt.day);
  final dn = DateTime(now.year, now.month, now.day);
  if (d == dn) {
    return '${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
  }
  return '${dt.month}/${dt.day}';
}

String _displayName(User user) {
  final parts = [user.firstname, user.lastname]
      .where((e) => (e ?? '').isNotEmpty)
      .toList();
  if (user.username != null && user.username!.isNotEmpty) return user.username!;
  if (parts.isNotEmpty) return parts.join(' ');
  return 'Contact';
}
