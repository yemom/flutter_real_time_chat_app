import 'package:myfirst_flutter_project/data/model/user.dart';

class Chat {
  final String message;
  final User user;
  final DateTime time;

  Chat(this.message, this.user, this.time);

  factory Chat.fromJson(Map<String, dynamic> json) {
    return Chat(
      json['message'] as String,
      User.fromJson(json['user'] as Map<String, dynamic>),
      _parseTime(json['time']),
    );
  }
}

DateTime _parseTime(dynamic v) {
  if (v is String) {
    try {
      return DateTime.parse(v);
    } catch (_) {}
  }
  return DateTime.now();
}
