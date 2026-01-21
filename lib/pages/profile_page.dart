import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/component/post_item.dart';
import 'package:myfirst_flutter_project/component/user_avatar.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/config/app_string.dart';
import 'package:myfirst_flutter_project/pages/tool_bar.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/provider/post_provider.dart';
import 'package:myfirst_flutter_project/style/app_text.dart';
import 'package:provider/provider.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AppRepo>().user;
    return Consumer<PostProvider>(
      builder: (_, posts, __) {
        final mine = posts.list.where((p) => p.owner?.id == user?.id).toList();
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
                      Navigator.of(context).pushNamed(AppRoute.login);
                      break;
                    default:
                  }
                },
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      value: ProfileMenu.edit,
                      child: Text(AppString.edit),
                    ),
                    PopupMenuItem(
                      value: ProfileMenu.logout,
                      child: Text(AppString.logout),
                    ),
                  ];
                },
              ),
            ],
          ),
          body: Column(
            children: [
              UserAvatar(size: 90),
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
                      Text(AppString.followers),
                    ],
                  ),
                  Column(
                    children: [
                      Text('87', style: AppText.header2),
                      Text(AppString.posts),
                    ],
                  ),
                  Column(
                    children: [
                      Text('839', style: AppText.header2),
                      Text(AppString.folowing),
                    ],
                  ),
                ],
              ),
              Divider(thickness: 1, height: 24),
              ...mine.map((p) => PostItem(post: p)),
            ],
          ),
        );
      },
    );
  }
}
