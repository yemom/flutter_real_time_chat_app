import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/pages/edit_profile_page.dart';
import 'package:myfirst_flutter_project/pages/forgot_password_page.dart';
import 'package:myfirst_flutter_project/pages/home_page.dart';
import 'package:myfirst_flutter_project/pages/login_page.dart';
import 'package:myfirst_flutter_project/pages/main_pages.dart';
import 'package:myfirst_flutter_project/pages/nearby_page.dart';
import 'package:myfirst_flutter_project/pages/chat_list_page.dart';
import 'package:myfirst_flutter_project/pages/chat_page.dart';
import 'package:myfirst_flutter_project/pages/signup_page.dart';
import 'package:myfirst_flutter_project/provider/login_provider.dart';
import 'package:myfirst_flutter_project/provider/forgot_password_provider.dart';
import 'package:myfirst_flutter_project/provider/signup_provider.dart';
import 'package:provider/provider.dart';

class AppRoute {
  static final pages = {
    login:
        (context) => ChangeNotifierProvider(
          create: (context) => LoginProvider(),
          child: LoginPage(),
        ),
    forgot:
        (context) => ChangeNotifierProvider(
          create: (context) => ForgotPasswordProvider(),
          child: const ForgotPasswordPage(),
        ),
    signup:
        (context) => ChangeNotifierProvider(
          create: (context) => SignupProvider(),
          child: SignupPage(),
        ),
    home: (context) => HomePage(),
    main: (context) => MainPage(),
    editProfile: (context) => EditProfilePage(),
    nearby: (contex) => NearbyPage(),
    chats: (context) => const ChatListPage(),
    chat: (context) {
      final arg = ModalRoute.of(context)!.settings.arguments;
      return ChatPage(peer: arg as dynamic);
    },
  };
  static const login = '/';
  static const forgot = '/forgot';
  static const signup = '/signup';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
  static const chats = '/chats';
  static const chat = '/chat';
}
