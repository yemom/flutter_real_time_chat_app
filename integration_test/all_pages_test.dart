import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:myfirst_flutter_project/config/app_string.dart';
import 'package:myfirst_flutter_project/data/model/chat.dart';
import 'package:myfirst_flutter_project/data/model/location.dart';
import 'package:myfirst_flutter_project/data/model/post.dart';
import 'package:myfirst_flutter_project/data/model/user.dart';
import 'package:myfirst_flutter_project/pages/chat_list_page.dart';
import 'package:myfirst_flutter_project/pages/chat_page.dart';
import 'package:myfirst_flutter_project/pages/edit_profile_page.dart';
import 'package:myfirst_flutter_project/pages/forgot_password_page.dart';
import 'package:myfirst_flutter_project/pages/home_page.dart';
import 'package:myfirst_flutter_project/pages/login_page.dart';
import 'package:myfirst_flutter_project/pages/main_pages.dart';
import 'package:myfirst_flutter_project/pages/nearby_page.dart';
import 'package:myfirst_flutter_project/pages/profile_page.dart';
import 'package:myfirst_flutter_project/pages/signup_page.dart';
import 'package:myfirst_flutter_project/pages/test_page.dart';
import 'package:myfirst_flutter_project/pages/user_page.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/provider/forgot_password_provider.dart';
import 'package:myfirst_flutter_project/provider/login_provider.dart';
import 'package:myfirst_flutter_project/provider/post_provider.dart';
import 'package:myfirst_flutter_project/provider/signup_provider.dart';
import 'package:myfirst_flutter_project/provider/user_provider.dart';
import 'package:provider/provider.dart';

class FakeAppRepo extends AppRepo {
  FakeAppRepo({User? user, String? token, List<Chat>? chats}) {
    this.user = user;
    this.token = token;
    if (chats != null) {
      setChats(chats);
    }
  }

  @override
  void ensureChatSocketConnected() {}
}

class FakePostProvider extends PostProvider {
  FakePostProvider({List<Post>? initial}) {
    if (initial != null) {
      list.addAll(initial);
    }
  }

  @override
  Future<void> getPost(String token) async {}
}

class FakeUserProvider extends UserProvider {
  FakeUserProvider(this._users);

  final List<User> _users;

  @override
  Future<List<User>> getAllUser() async => _users;
}

Widget _wrapWithProviders({
  required Widget child,
  AppRepo? repo,
  PostProvider? postProvider,
  UserProvider? userProvider,
  LoginProvider? loginProvider,
  SignupProvider? signupProvider,
  ForgotPasswordProvider? forgotProvider,
}) {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider<AppRepo>.value(value: repo ?? FakeAppRepo()),
      ChangeNotifierProvider<PostProvider>.value(
        value: postProvider ?? FakePostProvider(),
      ),
      ChangeNotifierProvider<UserProvider>.value(
        value: userProvider ?? FakeUserProvider(const []),
      ),
      ChangeNotifierProvider<LoginProvider>.value(
        value: loginProvider ?? LoginProvider(),
      ),
      ChangeNotifierProvider<SignupProvider>.value(
        value: signupProvider ?? SignupProvider(),
      ),
      ChangeNotifierProvider<ForgotPasswordProvider>.value(
        value: forgotProvider ?? ForgotPasswordProvider(),
      ),
    ],
    child: MaterialApp(home: child),
  );
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  final me = User(
    1,
    'Alex',
    'Morgan',
    'alexm',
    '555-0101',
    null,
    null,
    null,
    null,
  );
  final peer = User(2, 'Jamie', 'Lee', 'jamie', null, null, null, null, null);

  testWidgets('Login page renders', (tester) async {
    await tester.pumpWidget(_wrapWithProviders(child: const LoginPage()));
    await tester.pumpAndSettle();
    expect(find.text(AppString.helloWelcome), findsOneWidget);
    expect(find.text(AppString.login), findsOneWidget);
  });

  testWidgets('Signup page renders', (tester) async {
    await tester.pumpWidget(_wrapWithProviders(child: const SignupPage()));
    await tester.pumpAndSettle();
    expect(find.text('Create Account'), findsOneWidget);
    expect(find.text(AppString.signup), findsOneWidget);
  });

  testWidgets('Forgot password page renders', (tester) async {
    await tester.pumpWidget(
      _wrapWithProviders(child: const ForgotPasswordPage()),
    );
    await tester.pumpAndSettle();
    expect(find.text('Forgot Password'), findsOneWidget);
    expect(find.text(AppString.resetPassword), findsOneWidget);
  });

  testWidgets('Home page renders', (tester) async {
    final repo = FakeAppRepo(user: me, token: null);
    await tester.pumpWidget(
      _wrapWithProviders(
        child: const HomePage(),
        repo: repo,
        postProvider: FakePostProvider(),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text(AppString.home), findsOneWidget);
    expect(find.text('No posts yet.'), findsOneWidget);
  });

  testWidgets('Main page renders', (tester) async {
    final repo = FakeAppRepo(user: me, token: null);
    await tester.pumpWidget(
      _wrapWithProviders(
        child: const MainPage(),
        repo: repo,
        postProvider: FakePostProvider(),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text(AppString.home), findsOneWidget);
  });

  testWidgets('Nearby page renders markers and sheet', (tester) async {
    final users = <User>[
      User(
        1,
        'Alex',
        'Morgan',
        'alexm',
        '555-0101',
        null,
        null,
        null,
        Location(37.7749, -122.4194, 'San Francisco'),
      ),
      User(2, 'Jamie', 'Lee', 'jamie', null, null, null, null, null),
    ];

    await tester.pumpWidget(
      _wrapWithProviders(
        child: const NearbyPage(showTiles: false),
        userProvider: FakeUserProvider(users),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Alex Morgan'), findsOneWidget);

    await tester.tap(find.text('Alex Morgan'));
    await tester.pumpAndSettle();

    expect(find.text('Follow'), findsOneWidget);
    expect(find.text('San Francisco'), findsOneWidget);
  });

  testWidgets('Chat list page renders', (tester) async {
    final repo = FakeAppRepo(
      user: me,
      chats: [Chat('Hello there', peer, DateTime.now())],
    );

    await tester.pumpWidget(
      _wrapWithProviders(child: const ChatListPage(), repo: repo),
    );
    await tester.pumpAndSettle();

    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Hello there'), findsOneWidget);
  });

  testWidgets('Chat page renders', (tester) async {
    final repo = FakeAppRepo(
      user: me,
      chats: [Chat('Hi!', peer, DateTime.now())],
    );

    await tester.pumpWidget(
      _wrapWithProviders(child: ChatPage(peer: peer), repo: repo),
    );
    await tester.pumpAndSettle();

    expect(find.text('Online now'), findsOneWidget);
    expect(find.text('Hi!'), findsOneWidget);
    expect(find.text('Type a message'), findsOneWidget);
  });

  testWidgets('Profile page renders', (tester) async {
    final repo = FakeAppRepo(user: me);
    await tester.pumpWidget(
      _wrapWithProviders(
        child: const ProfilePage(),
        repo: repo,
        postProvider: FakePostProvider(initial: const []),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text(AppString.profile), findsOneWidget);
  });

  testWidgets('Edit profile page renders', (tester) async {
    final repo = FakeAppRepo(user: me, token: 'token');
    await tester.pumpWidget(
      _wrapWithProviders(child: const EditProfilePage(), repo: repo),
    );
    await tester.pumpAndSettle();
    expect(find.text(AppString.editProfile), findsOneWidget);
    expect(find.text('Save'), findsOneWidget);
  });

  testWidgets('User page renders', (tester) async {
    await tester.pumpWidget(_wrapWithProviders(child: const UserPage()));
    await tester.pumpAndSettle();
    expect(find.text('User name'), findsOneWidget);
  });

  testWidgets('Test page counter increments', (tester) async {
    await tester.pumpWidget(_wrapWithProviders(child: const TestPage()));
    await tester.pumpAndSettle();

    expect(find.text('This is counter: 0'), findsOneWidget);

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pumpAndSettle();

    expect(find.text('This is counter: 1'), findsOneWidget);
  });
}
