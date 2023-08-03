import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:sample_app/main.dart' as app;

class MainPage {
  WidgetTester tester;
  // Page locators
  var incrementButton = find.byKey(const Key("increment_button"));
  var decrementButton = find.byKey(const Key("decrement_button"));

  // Constructor
  MainPage(this.tester);

  // Page operations
  Future incrementCounter() async {
    await tester.tap(incrementButton);
    await tester.pumpAndSettle();
  }

  Future decrementCounter() async {
    await tester.tap(decrementButton);
    await tester.pumpAndSettle();
  }
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Integration Tests - Sample App', () {
    testWidgets('can increment', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      MainPage mainPage = MainPage(tester);

      // await mainPage.incrementCounter();
      // expect(find.text('1'), findsOneWidget);
    });

    testWidgets('can decrement', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      MainPage mainPage = MainPage(tester);

      // await mainPage.decrementCounter();
      // expect(find.text('-1'), findsOneWidget);
    });
  });
}
