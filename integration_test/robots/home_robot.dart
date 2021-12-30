import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integartion_test_simple/screens/home_screen.dart';
class HomeRobot{
  final WidgetTester tester;
  HomeRobot({required this.tester});

  Future<void> findText(String text)async{
    final finder = find.text("${text}");
    expect(finder, findsOneWidget);
    await tester.pumpAndSettle();
  }
  Future<void> navigateToSecondScreen()async{
    final finder = find.byKey(const Key("home_navigate_second_screen"));
    await tester.pumpAndSettle();
    await  tester.tap(finder);
    await  tester.pumpAndSettle();
  }
}