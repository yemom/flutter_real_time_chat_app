import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class Utils {
  static Future<String> pickImage(ImageSource source) async {
    try {
      final hasPermission = await _ensurePermission(source);
      if (!hasPermission) {
        return '';
      }
      final picker = ImagePicker();
      final image = await picker.pickImage(source: source);
      return image?.path ?? '';
    } catch (e) {
      print(e);
      return '';
    }
  }

  static Future<CroppedFile?> cropImage(String path) async {
    final result = await ImageCropper().cropImage(
      sourcePath: path,
      aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
    );
    return result;
  }

  static Future<bool> _ensurePermission(ImageSource source) async {
    if (source == ImageSource.camera) {
      final status = await Permission.camera.request();
      return status.isGranted;
    }
    // Gallery: Android 13+ uses READ_MEDIA_IMAGES via Permission.photos.
    var status = await Permission.photos.request();
    if (status.isGranted) return true;
    // Fallback for older Android versions.
    status = await Permission.storage.request();
    return status.isGranted;
  }
}
