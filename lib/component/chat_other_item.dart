import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/component/user_avatar.dart';
import 'package:myfirst_flutter_project/data/model/chat.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';

class ChatOtherItem extends StatelessWidget {
  final Chat chat;
  final String timeLabel;
  final String senderName;
  const ChatOtherItem({
    super.key,
    required this.chat,
    required this.timeLabel,
    required this.senderName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 46, left: 18, top: 10, bottom: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserAvatar(size: 40),
              const SizedBox(width: 10),
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.85,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F6F8),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        senderName,
                        style: TextStyle(
                          color: AppColor.fontTitle,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        chat.message,
                        style: TextStyle(color: AppColor.black, height: 1.35),
                      ),
                    ],
                  ),
                ),
              ),
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
