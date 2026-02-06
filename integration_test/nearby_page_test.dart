import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:myfirst_flutter_project/data/model/location.dart';
import 'package:myfirst_flutter_project/data/model/user.dart';
import 'package:myfirst_flutter_project/pages/nearby_page.dart';
import 'package:myfirst_flutter_project/provider/user_provider.dart';
import 'package:provider/provider.dart';

class FakeUserProvider extends UserProvider {
  FakeUserProvider(this._users);

  final List<User> _users;

  @override
  Future<List<User>> getAllUser() async => _users;
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Nearby page shows markers and opens bottom sheet', (
    WidgetTester tester,
  ) async {
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
      ChangeNotifierProvider<UserProvider>.value(
        value: FakeUserProvider(users),
        child: const MaterialApp(home: NearbyPage(showTiles: false)),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Alex Morgan'), findsOneWidget);

    await tester.tap(find.text('Alex Morgan'));
    await tester.pumpAndSettle();

    expect(find.text('Follow'), findsOneWidget);
    expect(find.text('San Francisco'), findsOneWidget);
    expect(find.text('@alexm'), findsOneWidget);
  });
}
