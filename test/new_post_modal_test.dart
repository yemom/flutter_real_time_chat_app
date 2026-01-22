import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myfirst_flutter_project/component/new_post_modal.dart';
import 'package:myfirst_flutter_project/data/service/base_service.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/provider/post_provider.dart';
import 'package:provider/provider.dart';

class FakePostProvider extends PostProvider {
  bool createCalled = false;
  bool shouldThrow = false;
  int galleryCount = 0;
  int cameraCount = 0;

  @override
  Future<void> createPost(String token) async {
    isSubmitting = true;
    notifyListeners();
    await Future<void>.delayed(const Duration(milliseconds: 10));
    if (shouldThrow) {
      isSubmitting = false;
      notifyListeners();
      throw ApiException('Failed');
    }
    createCalled = true;
    isSubmitting = false;
    notifyListeners();
  }

  @override
  Future<void> pickImage(ImageSource source) async {
    if (source == ImageSource.gallery) {
      galleryCount++;
    }
    if (source == ImageSource.camera) {
      cameraCount++;
    }
  }
}

Future<void> _openModal(
  WidgetTester tester,
  FakePostProvider provider, {
  String? token,
}) async {
  await tester.pumpWidget(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AppRepo>(
          create: (_) => AppRepo()..token = token,
        ),
        ChangeNotifierProvider<PostProvider>.value(value: provider),
      ],
      child: MaterialApp(
        home: Scaffold(
          body: Builder(
            builder:
                (context) => TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (_) => const NewPostModal(),
                    );
                  },
                  child: const Text('open'),
                ),
          ),
        ),
      ),
    ),
  );
  await tester.tap(find.text('open'));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('blocks creation when not logged in', (tester) async {
    final provider = FakePostProvider();
    await _openModal(tester, provider);

    await tester.ensureVisible(find.text('Create post'));
    await tester.tap(find.text('Create post'));
    await tester.pumpAndSettle();

    expect(find.text('You are not logged in.'), findsOneWidget);
    expect(provider.createCalled, isFalse);
  });

  testWidgets('blocks creation when message is empty', (tester) async {
    final provider = FakePostProvider();
    await _openModal(tester, provider, token: 'token');

    await tester.ensureVisible(find.text('Create post'));
    await tester.tap(find.text('Create post'));
    await tester.pumpAndSettle();

    expect(find.text('Message is required.'), findsOneWidget);
    expect(provider.createCalled, isFalse);
  });

  testWidgets('creates post and closes modal on success', (tester) async {
    final provider = FakePostProvider()..message = 'Hello world';
    await _openModal(tester, provider, token: 'token');

    await tester.ensureVisible(find.text('Create post'));
    await tester.tap(find.text('Create post'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 20));
    await tester.pumpAndSettle();

    expect(provider.createCalled, isTrue);
    expect(find.text('Post created successfully.'), findsOneWidget);
    expect(find.byType(NewPostModal), findsNothing);
  });

  testWidgets('picks image from gallery or camera', (tester) async {
    final provider = FakePostProvider();
    await _openModal(tester, provider, token: 'token');

    await tester.ensureVisible(find.text('Upload from gallery'));
    await tester.tap(find.text('Upload from gallery'));
    await tester.pump();
    await tester.tap(find.text('Camera'));
    await tester.pump();

    expect(provider.galleryCount, 1);
    expect(provider.cameraCount, 1);
  });
}
