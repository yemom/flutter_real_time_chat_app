import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfirst_flutter_project/component/post_item.dart';
import 'package:myfirst_flutter_project/pages/tool_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUserFromServer();
    return Scaffold(
      appBar: ToolBar(
        title: "Esrom's project",
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/svg/location.svg',
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(user: users[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 24);
        },
        itemCount: users.length,
      ),
    );
  }

  mockUserFromServer() {
    for (int i = 0; i < 1000; i++) {
      users.add('user number $i');
    }
    return users;
  }
}
