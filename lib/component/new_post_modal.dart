import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/component/app_text_field.dart';
import 'package:myfirst_flutter_project/data/service/base_service.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/provider/post_provider.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';
import 'package:myfirst_flutter_project/style/app_text.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class NewPostModal extends StatelessWidget {
  const NewPostModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.background,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Insert Message', style: AppText.header1),
          SizedBox(height: 16),
          AppTextField(
            hint: 'Message...',
            onChange: (value) {
              context.read<PostProvider>().message = value;
            },
          ),
          SizedBox(height: 16),
          Text('Add Image', style: AppText.header1),
          SizedBox(height: 16),
          Consumer<PostProvider>(
            builder:
                (context, value, child) => GestureDetector(
                  onTap: () {
                    context.read<PostProvider>().pickImage(ImageSource.gallery);
                  },
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child:
                        value.imagePath == null
                            ? Center(child: Text('Upload from gallery'))
                            : ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                              child: Stack(
                                children: [
                                  Image.file(File(value.imagePath!)),
                                  IconButton(
                                    onPressed: () {
                                      value.deleteImage();
                                    },
                                    icon: Icon(
                                      Icons.delete_rounded,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                  ),
                ),
          ),
          SizedBox(height: 16),
          Text("OR"),
          SizedBox(height: 16),
          OutlinedButton(
            onPressed: () {
              context.read<PostProvider>().pickImage(ImageSource.camera);
            },
            child: Text('Camera'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () async {
              final token = context.read<AppRepo>().token;
              if (token == null || token.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('You are not logged in.')),
                );
                return;
              }
              final message = context.read<PostProvider>().message.trim();
              if (message.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Message is required.')),
                );
                return;
              }
              try {
                await context.read<PostProvider>().createPost(token);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Post created successfully.')),
                );
              } catch (e) {
                final msg =
                    e is ApiException ? e.message : 'Failed to create post.';
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(msg)));
                return;
              }
              if (!context.mounted) return;
              Navigator.of(context).pop();
            },
            child: Text('Create post'),
          ),
        ],
      ),
    );
  }
}
