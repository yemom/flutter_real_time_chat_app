import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/component/app_text_field.dart';
import 'package:myfirst_flutter_project/component/user_avatar.dart';
import 'package:myfirst_flutter_project/config/app_string.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/pages/tool_bar.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/provider/user_provider.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';
import 'package:myfirst_flutter_project/style/app_text.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myfirst_flutter_project/data/service/upload_service.dart';
import 'package:myfirst_flutter_project/utils/utils.dart';

enum Gender { none, male, female, other }

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;
  late final TextEditingController _firstController;
  late final TextEditingController _lastController;
  final TextEditingController _birthdayController = TextEditingController();
  bool _isSaving = false;
  String? _avatarPath;
  bool _isUploadingAvatar = false;

  @override
  void initState() {
    super.initState();
    final user = context.read<AppRepo>().user;
    _firstController = TextEditingController(text: user?.firstname ?? '');
    _lastController = TextEditingController(text: user?.lastname ?? '');
    _birthdayController.text = user?.birthday ?? '';
  }

  @override
  void dispose() {
    _firstController.dispose();
    _lastController.dispose();
    _birthdayController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final repo = context.watch<AppRepo>();
    return Scaffold(
      appBar: ToolBar(title: AppString.editProfile, actions: []),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: UserAvatar(
                    size: 120,
                    imagePath: _avatarPath,
                    imageUrl: repo.profileImageUrl,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: InkWell(
                    onTap: _isUploadingAvatar ? null : _pickProfileImage,
                    borderRadius: BorderRadius.circular(6),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child:
                          _isUploadingAvatar
                              ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.black,
                                ),
                              )
                              : const Icon(
                                Icons.edit,
                                size: 20,
                                color: Colors.black,
                              ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),

            AppTextField(
              hint: AppString.firstName,
              controller: _firstController,
            ),
            SizedBox(height: 16),
            AppTextField(hint: AppString.lastName, controller: _lastController),
            SizedBox(height: 16),
            AppTextField(hint: AppString.phoneNumber),
            SizedBox(height: 16),
            AppTextField(hint: AppString.location),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: _isSaving ? null : _handleUseMyLocation,
                icon: const Icon(Icons.my_location),
                label: const Text('Use my location'),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _birthdayController,
              readOnly: true,
              decoration: InputDecoration(
                hintText: AppString.birthday,
                filled: true,
                fillColor: AppColor.fieldColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: const Icon(Icons.calendar_month),
              ),
              onTap: _pickBirthday,
            ),
            SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: AppColor.fieldColor,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppString.gender,
                    style: AppText.body1.copyWith(fontSize: 12),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          title: Text(AppString.male),
                          value: Gender.male,
                          visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.maximumDensity,
                          ),
                          contentPadding: EdgeInsets.zero,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value as Gender;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: Text(AppString.fimale),
                          value: Gender.female,
                          visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.maximumDensity,
                          ),
                          contentPadding: EdgeInsets.zero,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value as Gender;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: Text(AppString.other),
                          value: Gender.other,
                          visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.maximumDensity,
                          ),
                          contentPadding: EdgeInsets.zero,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value as Gender;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isSaving ? null : _saveProfile,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                  backgroundColor: AppColor.primary,
                  foregroundColor: AppColor.black,
                ),
                child:
                    _isSaving
                        ? const SizedBox(
                          height: 18,
                          width: 18,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: AppColor.black,
                          ),
                        )
                        : const Text('Save'),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: _isSaving ? null : _confirmDelete,
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                  foregroundColor: Colors.redAccent,
                  side: const BorderSide(color: Colors.redAccent),
                ),
                child: const Text('Delete account'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _saveProfile() async {
    final repo = context.read<AppRepo>();
    final user = repo.user;
    final token = repo.token;
    if (user == null || token == null || token.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('You must be logged in to update profile.'),
        ),
      );
      return;
    }

    setState(() => _isSaving = true);
    try {
      final updated = await context.read<UserProvider>().updateUser(
        id: user.id,
        token: token,
        firstName: _firstController.text.trim(),
        lastName: _lastController.text.trim(),
      );
      repo.user = updated;
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Profile updated.')));
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Update failed: ${e.toString()}')));
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }

  Future<Position?> _getCurrentPosition() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return null;
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return null;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return null;
    }

    return Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );
  }

  Future<void> _updateUserLocation({
    required double lat,
    required double lng,
    String? name,
  }) async {
    final repo = context.read<AppRepo>();
    final user = repo.user;
    final token = repo.token;
    if (user == null || token == null || token.isEmpty) {
      return;
    }

    final updated = await context.read<UserProvider>().updateUser(
      id: user.id,
      token: token,
      lat: lat,
      lng: lng,
      locationName: name,
    );
    repo.user = updated;
  }

  Future<void> _handleUseMyLocation() async {
    setState(() => _isSaving = true);
    try {
      final position = await _getCurrentPosition();
      if (position == null) {
        return;
      }
      await _updateUserLocation(
        lat: position.latitude,
        lng: position.longitude,
        name: null,
      );
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Location updated.')));
      Navigator.of(context).pushNamed(AppRoute.nearby);
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }

  Future<void> _confirmDelete() async {
    final repo = context.read<AppRepo>();
    final user = repo.user;
    final token = repo.token;
    if (user == null || token == null || token.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('You must be logged in to delete account.'),
        ),
      );
      return;
    }

    final confirmed = await showDialog<bool>(
      context: context,
      builder:
          (ctx) => AlertDialog(
            title: const Text('Delete account'),
            content: const Text('This action cannot be undone. Continue?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(false),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(ctx).pop(true),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),
                child: const Text('Delete'),
              ),
            ],
          ),
    );

    if (confirmed != true) return;

    setState(() => _isSaving = true);
    try {
      await context.read<UserProvider>().deleteUser(id: user.id, token: token);
      repo.user = null;
      repo.token = null;
      if (!mounted) return;
      Navigator.of(
        context,
      ).pushNamedAndRemoveUntil(AppRoute.login, (_) => false);
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Delete failed: ${e.toString()}')));
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }

  Future<void> _pickProfileImage() async {
    final repo = context.read<AppRepo>();
    final token = repo.token;
    if (token == null || token.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('You must be logged in to upload photo.')),
      );
      return;
    }

    final source = await showModalBottomSheet<ImageSource>(
      context: context,
      builder:
          (ctx) => SafeArea(
            child: Wrap(
              children: [
                ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text('Choose from gallery'),
                  onTap: () => Navigator.of(ctx).pop(ImageSource.gallery),
                ),
                ListTile(
                  leading: const Icon(Icons.camera_alt),
                  title: const Text('Take a photo'),
                  onTap: () => Navigator.of(ctx).pop(ImageSource.camera),
                ),
              ],
            ),
          ),
    );

    if (source == null) return;

    setState(() => _isUploadingAvatar = true);
    try {
      final pickedPath = await Utils.pickImage(source);
      if (pickedPath.isEmpty) return;

      final cropped = await Utils.cropImage(pickedPath);
      final imagePath = cropped?.path ?? pickedPath;

      setState(() => _avatarPath = imagePath);

      final url = await UploadService(imagePath, token).call();
      repo.setProfileImageUrl(url);

      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Profile photo updated.')));
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Upload failed: ${e.toString()}')));
    } finally {
      if (mounted) setState(() => _isUploadingAvatar = false);
    }
  }

  Future<void> _pickBirthday() async {
    final initial = _birthdayController.text.trim();
    DateTime initialDate;
    try {
      initialDate = DateTime.parse(initial);
    } catch (_) {
      initialDate = DateTime.now();
    }

    final picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked == null) return;

    _birthdayController.text =
        '${picked.year.toString().padLeft(4, '0')}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}';
  }
}
