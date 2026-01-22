// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myfirst_flutter_project/pages/test_page.dart';

void main() {
  testWidgets('TestPage increments counter', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: TestPage()));

    expect(find.text('This is counter: 0'), findsOneWidget);
    expect(find.text('This is counter: 1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('This is counter: 1'), findsOneWidget);
  });
}
