import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/pages/tool_bar.dart';
import 'package:myfirst_flutter_project/style/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: 'profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoute.editProfile);
                  break;
                case ProfileMenu.logout:
                  print('logout');
                  break;
                default:
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(value: ProfileMenu.edit, child: Text('Edit')),
                PopupMenuItem(
                  value: ProfileMenu.logout,
                  child: Text('Log out'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              'assets/temp/beryl.chung%40mediamonks.com.jpg',
              width: 90,
              height: 90,
            ),
          ),
          SizedBox(height: 24),
          Text('Esrom Basazinaw', style: AppText.header2),
          SizedBox(height: 12),
          Text('Addis Ababa', style: AppText.subtitle3),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('997', style: AppText.header2),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [Text('87', style: AppText.header2), Text('Posts')],
              ),
              Column(
                children: [
                  Text('839', style: AppText.header2),
                  Text('Following'),
                ],
              ),
            ],
          ),
          Divider(thickness: 1, height: 24),
        ],
      ),
    );
  }
}
