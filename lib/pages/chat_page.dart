import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/component/chat_me_itom.dart';
import 'package:myfirst_flutter_project/component/chat_other_item.dart';
import 'package:myfirst_flutter_project/component/toolbar.dart';
import 'package:myfirst_flutter_project/data/model/chat.dart';
import 'package:myfirst_flutter_project/data/model/user.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
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
    final items =
        repo.chats
            .where((c) => c.user.id == peer.id || c.user.id == me?.id)
            .toList();
    // Mark unread as read when viewing
    WidgetsBinding.instance.addPostFrameCallback((_) {
      repo.markConversationRead(peer.id);
    });
    return Scaffold(
      appBar: Toolbar(
        title:
            peer.username ??
            '${peer.firstname ?? ''} ${peer.lastname ?? ''}'.trim(),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scroll,
              padding: const EdgeInsets.only(bottom: 12),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final chat = items[index];
                if (chat.user.id == me?.id) return ChatMeItem(chat: chat);
                return ChatOtherItem(chat: chat);
              },
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 12),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Type your message... ',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                      ),
                      onSubmitted: (_) => _send(),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    tooltip: 'Send',
                    onPressed: _send,
                    icon: const Icon(Icons.send_rounded),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
