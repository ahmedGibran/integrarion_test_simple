import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class ThirdRobot{
  final WidgetTester tester;
  ThirdRobot({required this.tester});

  Future<void> findText(String text)async{
    final finder = find.text(text);
    await tester.pumpAndSettle();
    expect(finder,findsOneWidget);
  }

  Future<void> findButtonByKey(String key)async{
    final finder = find.byKey(Key(key));
    await tester.pumpAndSettle();
    expect(finder, findsOneWidget);

    await tester.tap(finder);
    await tester.pumpAndSettle();
  }



}