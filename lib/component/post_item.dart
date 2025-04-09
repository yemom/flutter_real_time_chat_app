import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/style/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/beryl.chung%40mediamonks.com.jpg',
                width: 40,
                height: 40,
              ),
              SizedBox(width: 16),
              Text(user, style: AppText.subtitle3),
            ],
          ),
          SizedBox(height: 14),
          Image.asset('assets/temp/post1.jpg'),
          SizedBox(height: 12),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque euismod, nisi vel consectetur interdum, nisl nisi dapibus nulla, sit amet gravida lacus quam vel nisi. Curabitur tincidunt, augue in tristique tristique, nulla arcu ullamcorper mauris, ac feugiat justo nulla sed eros.',
            style: AppText.subtitle3,
          ),
        ],
      ),
    );
  }
}
