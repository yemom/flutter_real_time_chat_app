import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.background,
        title: Text('Home page', style: TextStyle(color: AppColor.font)),
        actions: [Icon(Icons.location_on_outlined, color: AppColor.font)],
      ),
      body: ListView(children: mockUserFromServer()),
    );
  }

  Widget_userItem() {
    return Row(
      children: [
        Image.asset(
          'assets/temp/beryl.chung%40mediamonks.com.jpg',
          width: 40,
          height: 40,
        ),
        SizedBox(width: 16),
        Text('Beryl Chung'),
      ],
    );
  }

  List<Widget> mockUserFromServer() {
    List<Widget> users = [];
    for (int i = 0; i < 1000; i++) {
      users.add(Widget_userItem());
    }
    return users;
  }
}
