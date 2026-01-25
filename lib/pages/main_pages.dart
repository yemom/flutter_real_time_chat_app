import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/rendering.dart';
import 'package:myfirst_flutter_project/component/bottom_navigation_iton.dart';
import 'package:myfirst_flutter_project/component/new_post_modal.dart';
import 'package:myfirst_flutter_project/config/app_icon.dart';
import 'package:myfirst_flutter_project/pages/chat_list_page.dart';
import 'package:myfirst_flutter_project/pages/home_page.dart';
import 'package:myfirst_flutter_project/pages/profile_page.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;
  bool _showNav = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          if (notification.direction == ScrollDirection.reverse && _showNav) {
            setState(() => _showNav = false);
          } else if (notification.direction == ScrollDirection.forward &&
              !_showNav) {
            setState(() => _showNav = true);
          }
          return false;
        },
        child: pages[currentIndex.index],
      ),
      bottomNavigationBar: AnimatedSlide(
        duration: const Duration(milliseconds: 220),
        offset: _showNav ? Offset.zero : const Offset(0, 1.2),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 220),
          opacity: _showNav ? 1 : 0,
          child: MyBottomNavigation(
            currentIndex: currentIndex,
            onTap: (value) {
              if (value == Menus.add) {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) {
                    return NewPostModal();
                  },
                );
                return;
              }
              setState(() {
                currentIndex = value;
              });
            },
          ),
        ),
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(child: Text('Favorite')),
    Center(child: Text('Add Post')),
    ChatListPage(),
    ProfilePage(),
  ];
}

enum Menus { home, favorite, add, messages, user }

class MyBottomNavigation extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const MyBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: const EdgeInsets.fromLTRB(20, 8, 20, 16),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 24,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 16,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.home),
                      icon: AppIcon.home,
                      current: currentIndex,
                      name: Menus.home,
                    ),
                  ),
                  Expanded(
                    child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.favorite),
                      icon: AppIcon.favorite,
                      current: currentIndex,
                      name: Menus.favorite,
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.messages),
                      icon: AppIcon.message,
                      current: currentIndex,
                      name: Menus.messages,
                    ),
                  ),
                  Expanded(
                    child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.user),
                      icon: AppIcon.user,
                      current: currentIndex,
                      name: Menus.user,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: -6,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => onTap(Menus.add),
              child: Container(
                width: 68,
                height: 68,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColor.primary,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.primary.withOpacity(0.35),
                      blurRadius: 18,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: SvgPicture.asset(AppIcon.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
