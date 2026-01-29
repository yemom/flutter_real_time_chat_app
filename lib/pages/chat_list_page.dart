import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/data/model/user.dart';
import 'package:myfirst_flutter_project/data/model/chat.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';
import 'package:provider/provider.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({super.key});

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  final _searchController = TextEditingController();
  final _searchFocus = FocusNode();
  String _query = '';

  Future<void> _openNewChatComposer() async {
    final repo = context.read<AppRepo>();
    final nameCtrl = TextEditingController();
    final msgCtrl = TextEditingController();
    try {
      final result = await showModalBottomSheet<_ComposerResult>(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom + 20,
            ),
            child: StatefulBuilder(
              builder: (context, setState) {
                final enable =
                    nameCtrl.text.trim().isNotEmpty &&
                    msgCtrl.text.trim().isNotEmpty;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'New message',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 14),
                    TextField(
                      controller: nameCtrl,
                      decoration: const InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                      ),
                      textInputAction: TextInputAction.next,
                      onChanged: (_) => setState(() {}),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: msgCtrl,
                      decoration: const InputDecoration(
                        labelText: 'Message',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 3,
                      onChanged: (_) => setState(() {}),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed:
                            enable
                                ? () {
                                  Navigator.of(context).pop(
                                    _ComposerResult(
                                      nameCtrl.text.trim(),
                                      msgCtrl.text.trim(),
                                    ),
                                  );
                                }
                                : null,
                        child: const Text('Start chat'),
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        },
      );

      if (!mounted || result == null) return;
      final peer = _buildLocalUser(result.name);
      repo.addChat(Chat(result.message, peer, DateTime.now()));
      Navigator.of(context).pushNamed(AppRoute.chat, arguments: peer);
    } finally {
      nameCtrl.dispose();
      msgCtrl.dispose();
    }
  }

  User _buildLocalUser(String name) {
    final parts = name.split(' ').where((p) => p.trim().isNotEmpty).toList();
    final first = parts.isNotEmpty ? parts.first : 'Contact';
    final last = parts.length > 1 ? parts.sublist(1).join(' ') : null;
    final id = -DateTime.now().millisecondsSinceEpoch;
    return User(id, first, last, name, null, null, null, null, null);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AppRepo>().ensureChatSocketConnected();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocus.dispose();
    super.dispose();
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
    final filtered =
        _query.isEmpty
            ? people
            : people.where((p) {
              final name = _nameFor(p.user).toLowerCase();
              final msg = p.lastMessage.toLowerCase();
              final q = _query.toLowerCase();
              return name.contains(q) || msg.contains(q);
            }).toList();

    return Scaffold(
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 6),
              child: Row(
                children: [
                  const Text(
                    'Chat',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                  ),
                  const Spacer(),
                  InkWell(
                    borderRadius: BorderRadius.circular(14),
                    onTap: _openNewChatComposer,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(Icons.edit, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: TextField(
                controller: _searchController,
                focusNode: _searchFocus,
                decoration: InputDecoration(
                  hintText: 'Search in chat',
                  prefixIcon: InkWell(
                    onTap: () => _searchFocus.requestFocus(),
                    child: const Icon(Icons.search),
                  ),
                  suffixIcon:
                      _query.isNotEmpty
                          ? IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () {
                              _searchController.clear();
                              setState(() {
                                _query = '';
                              });
                            },
                          )
                          : null,
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
                  isDense: true,
                ),
                onChanged: (value) {
                  setState(() {
                    _query = value.trim();
                  });
                },
              ),
            ),
            SizedBox(
              height: 108,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: people.isEmpty ? 1 : people.length + 1,
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return _StoryAvatar(
                      label: 'Add New',
                      color: const Color(0xFFFFE1E8),
                      icon: Icons.add,
                      onTap: _openNewChatComposer,
                    );
                  }
                  final p = people[index - 1].user;
                  return _StoryAvatar(
                    label: _nameFor(p, short: true),
                    color: Colors.white,
                    initials: _initials(p),
                    onTap:
                        () => Navigator.of(
                          context,
                        ).pushNamed(AppRoute.chat, arguments: p),
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26),
                  ),
                ),
                child:
                    filtered.isEmpty
                        ? const Center(
                          child: Text(
                            'No conversations yet.',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                        : ListView.separated(
                          itemCount: filtered.length,
                          padding: const EdgeInsets.fromLTRB(16, 18, 16, 24),
                          separatorBuilder:
                              (_, __) => const SizedBox(height: 12),
                          itemBuilder: (context, index) {
                            final r = filtered[index];
                            return _ChatTile(recent: r);
                          },
                        ),
              ),
            ),
          ],
        ),
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      leading: CircleAvatar(
        radius: 26,
        backgroundColor: const Color(0xFFFFE1E8),
        child: Text(
          _initials(u),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
      title: Text(
        _nameFor(u),
        style: const TextStyle(fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        recent.lastMessage,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(color: Colors.black54),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            _timeLabel(recent.time),
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
          if (recent.unread > 0)
            Container(
              margin: const EdgeInsets.only(top: 6),
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '${recent.unread}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
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

String _nameFor(User u, {bool short = false}) {
  if (u.username != null && u.username!.isNotEmpty) return u.username!;
  final parts =
      [u.firstname, u.lastname].where((e) => (e ?? '').isNotEmpty).toList();
  if (parts.isEmpty) return 'Contact';
  if (short && parts.length > 1) return parts.first!;
  return parts.join(' ');
}

String _initials(User u) {
  final parts =
      [
        u.firstname,
        u.lastname,
      ].map((e) => (e ?? '').trim()).where((e) => e.isNotEmpty).toList();
  if (parts.isEmpty && u.username != null && u.username!.isNotEmpty) {
    return u.username!.substring(0, 1).toUpperCase();
  }
  if (parts.isEmpty) return 'C';
  return parts.map((e) => e[0].toUpperCase()).take(2).join();
}

class _StoryAvatar extends StatelessWidget {
  const _StoryAvatar({
    required this.label,
    this.icon,
    this.initials,
    required this.color,
    this.onTap,
  });
  final String label;
  final IconData? icon;
  final String? initials;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72,
      height: 86,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              child: Center(
                child:
                    icon != null
                        ? Icon(icon, color: Colors.black87)
                        : Text(
                          initials ?? '',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 72,
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12, color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ComposerResult {
  _ComposerResult(this.name, this.message);
  final String name;
  final String message;
}
