import 'package:myfirst_flutter_project/pages/edit_profile_page.dart';
import 'package:myfirst_flutter_project/pages/home_page.dart';
import 'package:myfirst_flutter_project/pages/login_page.dart';
import 'package:myfirst_flutter_project/pages/main_pages.dart';

class AppRoute {
  static final pages = {
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => MainPages(),
    '/edit_profile': (context) => EditProfilePage(),
  };
  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
}
