import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myfirst_flutter_project/component/app_text_field.dart';
import 'package:myfirst_flutter_project/data/service/base_service.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/provider/post_provider.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';
import 'package:myfirst_flutter_project/style/app_text.dart';
import 'package:provider/provider.dart';

class NewPostModal extends StatelessWidget {
  const NewPostModal({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isCompact = constraints.maxWidth < 360;
        final isMedium = constraints.maxWidth < 480;
        final double block = constraints.maxWidth / 20;
        final double imageSize = isCompact ? 140 : (isMedium ? 180 : 220);
        final double gap = isCompact ? 10 : 16;
        final double buttonHeight = isCompact ? 44 : 52;
        final double corner = isCompact ? 16 : 20;

        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColor.background.withOpacity(0.95),
                AppColor.background.withOpacity(0.85),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            border: Border.all(color: Colors.white10),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(24, 24, 24, 24 + block * 0.3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Icon(Icons.edit_note_rounded, size: isCompact ? 22 : 26),
                      const SizedBox(width: 8),
                      Text(
                        'Insert Message',
                        style: AppText.header1.copyWith(
                          fontSize: isCompact ? 18 : 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: gap),
                  AppTextField(
                    hint: 'Message...',
                    onChange: (value) {
                      context.read<PostProvider>().message = value;
                    },
                  ),
                  SizedBox(height: gap * 1.5),
                  Row(
                    children: [
                      Icon(
                        Icons.photo_library_rounded,
                        size: isCompact ? 20 : 24,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Add Image',
                        style: AppText.header1.copyWith(
                          fontSize: isCompact ? 18 : 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: gap),
                  Consumer<PostProvider>(
                    builder:
                        (context, value, child) => GestureDetector(
                          onTap: () {
                            context.read<PostProvider>().pickImage(
                              ImageSource.gallery,
                            );
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 180),
                            width: imageSize,
                            height: imageSize,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white24,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(corner),
                              ),
                              color: Colors.white.withOpacity(0.04),
                            ),
                            child:
                                value.imagePath == null
                                    ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.cloud_upload_outlined,
                                          size: isCompact ? 30 : 36,
                                          color: Colors.white70,
                                        ),
                                        const SizedBox(height: 8),
                                        const Text('Upload from gallery'),
                                      ],
                                    )
                                    : ClipRRect(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(corner - 2),
                                      ),
                                      child: Stack(
                                        fit: StackFit.expand,
                                        children: [
                                          Image.file(
                                            File(value.imagePath!),
                                            fit: BoxFit.cover,
                                          ),
                                          Positioned(
                                            top: 6,
                                            right: 6,
                                            child: Material(
                                              color: Colors.black54,
                                              shape: const CircleBorder(),
                                              child: InkWell(
                                                customBorder:
                                                    const CircleBorder(),
                                                onTap: value.deleteImage,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                    4,
                                                  ),
                                                  child: Icon(
                                                    Icons.close_rounded,
                                                    size: isCompact ? 18 : 20,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                          ),
                        ),
                  ),
                  SizedBox(height: gap),
                  Center(
                    child: Text(
                      'OR',
                      style: AppText.header1.copyWith(
                        fontSize: isCompact ? 14 : 16,
                        letterSpacing: 1.1,
                      ),
                    ),
                  ),
                  SizedBox(height: gap),
                  SizedBox(
                    height: buttonHeight,
                    child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.white24),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(corner),
                        ),
                      ),
                      onPressed: () {
                        context.read<PostProvider>().pickImage(
                          ImageSource.camera,
                        );
                      },
                      icon: Icon(
                        Icons.photo_camera_rounded,
                        size: isCompact ? 18 : 20,
                      ),
                      label: const Text('Camera'),
                    ),
                  ),
                  SizedBox(height: gap * 1.5),
                  Consumer<PostProvider>(
                    builder:
                        (context, postProvider, _) => SizedBox(
                          height: buttonHeight,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(corner),
                              ),
                            ),
                            onPressed:
                                postProvider.isSubmitting
                                    ? null
                                    : () async {
                                      final token =
                                          context.read<AppRepo>().token;
                                      if (token == null || token.isEmpty) {
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'You are not logged in.',
                                            ),
                                          ),
                                        );
                                        return;
                                      }
                                      final message =
                                          postProvider.message.trim();
                                      if (message.isEmpty) {
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'Message is required.',
                                            ),
                                          ),
                                        );
                                        return;
                                      }
                                      try {
                                        await postProvider.createPost(token);
                                        if (!context.mounted) return;
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'Post created successfully.',
                                            ),
                                          ),
                                        );
                                        Navigator.of(context).pop();
                                      } catch (e) {
                                        final msg =
                                            e is ApiException
                                                ? e.message
                                                : 'Failed to create post.';
                                        if (!context.mounted) return;
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          SnackBar(content: Text(msg)),
                                        );
                                      }
                                    },
                            child:
                                postProvider.isSubmitting
                                    ? const SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                      ),
                                    )
                                    : const Text('Create post'),
                          ),
                        ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
