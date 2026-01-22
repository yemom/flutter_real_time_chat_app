import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/data/model/post.dart';
import 'package:myfirst_flutter_project/data/service/base_service.dart';
import 'package:myfirst_flutter_project/data/service/create_post_service.dart';
import 'package:myfirst_flutter_project/data/service/delete_post_service.dart';
import 'package:myfirst_flutter_project/data/service/get_post_service.dart';
import 'package:myfirst_flutter_project/data/service/update_post_service.dart';
import 'package:myfirst_flutter_project/data/service/upload_service.dart';
import 'package:myfirst_flutter_project/utils/utils.dart';
import 'package:image_picker/image_picker.dart';

class PostProvider extends ChangeNotifier {
  final List<Post> list = [];
  String message = '';
  String? imagePath;
  bool _isPicking = false;
  bool isLoading = false;
  bool isSubmitting = false;
  String? error;

  Future<void> getPost(String token) async {
    isLoading = true;
    error = null;
    notifyListeners();
    try {
      final items = await GetPostService(token).call();
      list
        ..clear()
        ..addAll(items);
    } catch (e) {
      error = e is ApiException ? e.message : 'Failed to load posts.';
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> createPost(String token) async {
    if (isSubmitting) return;
    isSubmitting = true;
    notifyListeners();
    try {
      String? image;
      if (imagePath != null) {
        try {
          image = await upload(token);
        } catch (_) {
          // If upload fails (e.g., 404 /upload), continue with text-only post
          image = null;
        }
      }
      await CreatePostService(message, image, token).call();
      message = '';
      imagePath = null;
      await getPost(token); // keep feed in sync
    } finally {
      isSubmitting = false;
      notifyListeners();
    }
  }

  Future<void> updatePost(int id, String token, {String? newMessage}) async {
    String? image;
    if (imagePath != null) {
      try {
        image = await upload(token);
      } catch (_) {
        image = null;
      }
    }
    await UpdatePostService(id, newMessage, image, token).call();
    await getPost(token);
  }

  Future<void> deletePost(int id, String token) async {
    await DeletePostService(id, token).call();
    list.removeWhere((p) => p.id == id);
    notifyListeners();
  }

  Future<String> upload(String token) async {
    return await UploadService(imagePath!, token).call();
  }

  Future<void> pickImage(ImageSource source) async {
    if (_isPicking)
      return; // prevent double activity results causing plugin crashes
    _isPicking = true;
    try {
      final path = await Utils.pickImage(source);
      if (path.isEmpty) {
        imagePath = null;
      } else {
        // Cropper is disabled to avoid Android "Reply already submitted" crash; use raw pick
        imagePath = path;
      }
      notifyListeners();
    } catch (e) {
      // Swallow errors for UX; optionally log if needed
      imagePath = null;
      notifyListeners();
    } finally {
      _isPicking = false;
    }
  }

  deleteImage() {
    imagePath = null;
    notifyListeners();
  }
}
