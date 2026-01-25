import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/component/toolbar.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/data/model/user.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/style/app_text.dart';
import 'package:provider/provider.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({super.key});

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AppRepo>().ensureChatSocketConnected();
    });
  }

  @override
  Widget build(BuildContext context) {
    final repo = context.watch<AppRepo>();
    final me = repo.user;
    final chats = repo.chats;

    // Derive recent people from chats (unique by user id, excluding me)
    final Map<int, _Recent> recent = {};
    for (final c in chats) {
      if (me != null && c.user.id == me.id) continue;
      final prev = recent[c.user.id];
      if (prev == null || c.time.isAfter(prev.time)) {
        recent[c.user.id] = _Recent(
          user: c.user,
          lastMessage: c.message,
          time: c.time,
          unread: repo.unreadCountFor(c.user.id),
        );
      }
    }
    final people =
        recent.values.toList()..sort((a, b) => b.time.compareTo(a.time));

    return Scaffold(
      appBar: const Toolbar(title: 'Chat'),
      body: ListView(
        children: [
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                ),
                isDense: true,
              ),
            ),
          ),
          const SizedBox(height: 12),
          if (people.isEmpty)
            const Padding(
              padding: EdgeInsets.all(24),
              child: Center(child: Text('No conversations yet.')),
            )
          else
            ...people.map((r) => _ChatTile(recent: r)).toList(),
          const SizedBox(height: 30),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // For demo: start a chat with the first non-me user we find in chats.
          if (people.isNotEmpty) {
            Navigator.of(
              context,
            ).pushNamed(AppRoute.chat, arguments: people.first.user);
          }
        },
        child: const Icon(Icons.add_comment_rounded),
      ),
    );
  }
}

class _ChatTile extends StatelessWidget {
  const _ChatTile({required this.recent});
  final _Recent recent;

  @override
  Widget build(BuildContext context) {
    final u = recent.user;
    return ListTile(
      leading: const CircleAvatar(radius: 22),
      title: Text(
        u.username ?? '${u.firstname ?? ''} ${u.lastname ?? ''}'.trim(),
        style: AppText.subtitle3,
      ),
      subtitle: Text(
        recent.lastMessage,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _timeLabel(recent.time),
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
          if (recent.unread > 0)
            Container(
              margin: const EdgeInsets.only(top: 6),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '${recent.unread}',
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
        ],
      ),
      onTap: () => Navigator.of(context).pushNamed(AppRoute.chat, arguments: u),
    );
  }
}

class _Recent {
  final User user;
  final String lastMessage;
  final DateTime time;
  final int unread;
  _Recent({
    required this.user,
    required this.lastMessage,
    required this.time,
    required this.unread,
  });
}

String _timeLabel(DateTime dt) {
  final now = DateTime.now();
  final d = DateTime(dt.year, dt.month, dt.day);
  final dn = DateTime(now.year, now.month, now.day);
  if (d == dn) {
    return '${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
  }
  return '${dt.month}/${dt.day}';
}
