import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/config/app_config.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  final String? imageUrl;
  final String? imagePath;
  const UserAvatar({super.key, this.size = 40, this.imageUrl, this.imagePath});

  @override
  Widget build(BuildContext context) {
    ImageProvider imageProvider;
    if (imagePath != null && imagePath!.isNotEmpty) {
      imageProvider = FileImage(File(imagePath!));
    } else if (imageUrl != null && imageUrl!.isNotEmpty) {
      final url =
          imageUrl!.startsWith('http')
              ? imageUrl!
              : '${AppConfig.baseUrl}${imageUrl!.startsWith('/') ? '' : '/'}${imageUrl!}';
      imageProvider = NetworkImage(url);
    } else {
      imageProvider = const AssetImage(
        'assets/temp/beryl.chung%40mediamonks.com.jpg',
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Image(
        image: imageProvider,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
