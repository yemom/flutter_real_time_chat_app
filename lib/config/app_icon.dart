import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcon {
  static const _png = 'assets/image/';
  static const _svg = 'assets/svg/';

  // PNGs
  static const facebook = '${_png}facebook.png';
  static const google = '${_png}google.png';

  // SVGs (just the paths)
  static const String home = '${_svg}home.svg';
  static const String favorite = '${_svg}favorite.svg';
  static const String message = '${_svg}message.svg';
  static const String user = '${_svg}user.svg';
  static const String add = '${_svg}add.svg';

  /// 🔥 Use this method to get an SVG icon with consistent size
  static Widget svg(String path, {double size = 24, Color? color}) {
    return SvgPicture.asset(
      path,
      width: size,
      height: size,
      colorFilter:
          color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
    );
  }
}
