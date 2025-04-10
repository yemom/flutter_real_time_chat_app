import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/pages/edit_profile_page.dart';
import 'package:myfirst_flutter_project/pages/home_page.dart';
import 'package:myfirst_flutter_project/pages/login_page.dart';
import 'package:myfirst_flutter_project/pages/main_pages.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColor.background,
        brightness: Brightness.dark,
      ),
      initialRoute: AppRoute.login,
      routes: AppRoute.pages,
    );
  }
}
