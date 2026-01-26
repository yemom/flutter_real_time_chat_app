import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:myfirst_flutter_project/config/app_config.dart';
import 'package:myfirst_flutter_project/data/model/chat.dart';
import 'package:myfirst_flutter_project/data/model/user.dart';

class AppRepo extends ChangeNotifier {
  String? _token;
  User? user;
  final List<Chat> _chats = [];
  final Map<int, int> _unreadByUser = {};
  WebSocketChannel? _channel;
  bool _socketConnected = false;

  set token(String? value) {
    _token = value;
  }

  String? get token => _token;

  List<Chat> get chats => List.unmodifiable(_chats);
  int unreadCountFor(int userId) => _unreadByUser[userId] ?? 0;

  void setChats(List<Chat> items) {
    _chats
      ..clear()
      ..addAll(items);
    notifyListeners();
  }

  void addChat(Chat chat) {
    _chats.add(chat);
    notifyListeners();
  }

  void addIncomingChat(Chat chat) {
    _chats.add(chat);
    _unreadByUser[chat.user.id] = (_unreadByUser[chat.user.id] ?? 0) + 1;
    notifyListeners();
  }

  void markConversationRead(int userId) {
    if (_unreadByUser.containsKey(userId)) {
      _unreadByUser[userId] = 0;
      notifyListeners();
    }
  }

  void ensureChatSocketConnected() {
    if (_socketConnected) return;
    final wsUrl = '${AppConfig.baseUrl.replaceFirst('http', 'ws')}/ws';
    try {
      _channel = WebSocketChannel.connect(Uri.parse(wsUrl));
      _socketConnected = true;
      _channel!.stream.listen(
        (message) {
          try {
            final data = jsonDecode(message as String) as Map<String, dynamic>;
            addIncomingChat(Chat.fromJson(data));
          } catch (_) {}
        },
        onError: (e) {
          _socketConnected = false;
        },
        onDone: () {
          _socketConnected = false;
        },
      );
    } catch (_) {
      _socketConnected = false;
    }
  }

  void disconnectChatSocket() {
    _channel?.sink.close();
    _channel = null;
    _socketConnected = false;
  }
}
