import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/data/model/chat.dart';
import 'package:myfirst_flutter_project/data/model/user.dart';

class AppRepo extends ChangeNotifier {
  String? _token;
  User? user;
  final List<Chat> _chats = [];

  set token(String? value) {
    _token = value;
  }

  String? get token => _token;

  List<Chat> get chats => List.unmodifiable(_chats);

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
}
