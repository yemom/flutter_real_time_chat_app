import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/config/app_icon.dart';
import 'package:myfirst_flutter_project/pages/home_page.dart';
import 'package:myfirst_flutter_project/pages/profile_page.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPageState();
}

class _MainPageState extends State<MainPages> {
  Menus currentIndex = Menus.home;

  final pages = [
    HomePage(),
    Center(child: Text('Favorite')),
    Center(child: Text('Message')),
    Center(child: Text('Add Post')),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex.index],
      bottomNavigationBar: MyBottomNavigation(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}

enum Menus { home, favorite, message, add, user }

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
      height: 87,
      margin: EdgeInsets.all(24),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 17,
            left: 0,
            right: 0,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap(Menus.home),
                      icon: AppIcon.svg(
                        AppIcon.home,
                        color:
                            currentIndex == Menus.home
                                ? Colors.black
                                : Colors.black.withOpacity(0.3),
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap(Menus.favorite),
                      icon: AppIcon.svg(
                        AppIcon.favorite,
                        color:
                            currentIndex == Menus.favorite
                                ? Colors.black
                                : Colors.black.withOpacity(0.3),
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap(Menus.message),
                      icon: AppIcon.svg(
                        AppIcon.message,
                        color:
                            currentIndex == Menus.message
                                ? Colors.black
                                : Colors.black.withOpacity(0.3),
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap(Menus.user),
                      icon: AppIcon.svg(
                        AppIcon.user,
                        color:
                            currentIndex == Menus.user
                                ? Colors.black
                                : Colors.black.withOpacity(0.3),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(Menus.add),
              child: Container(
                width: 64,
                height: 64,
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: AppColor.primary,
                  shape: BoxShape.circle,
                ),
                child: AppIcon.svg(
                  AppIcon.add,
                  color:
                      currentIndex == Menus.add
                          ? Colors.black
                          : Colors.black.withOpacity(0.3),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
