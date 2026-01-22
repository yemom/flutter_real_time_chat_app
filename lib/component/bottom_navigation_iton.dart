import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myfirst_flutter_project/pages/main_pages.dart';

class BottomNavigationItem extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  final Menus current;
  final Menus name;
  const BottomNavigationItem({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.current,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    final bool isActive = current == name;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      child: Material(
        color: isActive ? Colors.black.withOpacity(0.06) : Colors.transparent,
        borderRadius: BorderRadius.circular(14),
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(
              icon,
              width: 22,
              height: 22,
              colorFilter: ColorFilter.mode(
                isActive ? Colors.black : Colors.black.withOpacity(0.35),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
