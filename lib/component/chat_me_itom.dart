import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/component/user_avatar.dart';
import 'package:myfirst_flutter_project/data/model/chat.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';

class ChatMeItem extends StatelessWidget {
  final Chat chat;
  final String timeLabel;
  const ChatMeItem({super.key, required this.chat, required this.timeLabel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18, left: 46, top: 10, bottom: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFADBE3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    chat.message,
                    style: TextStyle(color: AppColor.black, height: 1.35),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const UserAvatar(size: 40),
            ],
          ),

          const SizedBox(height: 6),
          Text(
            timeLabel,
            style: const TextStyle(fontSize: 11, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
