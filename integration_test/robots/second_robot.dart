import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
class SecondRobot{
  final WidgetTester tester;
  SecondRobot({required this.tester});

  Future<void> findText(String text)async{
    final finder = find.text(text);
    await tester.pumpAndSettle();
    expect(finder, findsOneWidget);
  }

  Future<void> scrollUp({required scroll, key})async{
    final finder = find.byKey( Key("${key}"));
    await tester.pumpAndSettle();
    expect(finder, findsOneWidget);
    if(scroll){
      await tester.fling(finder, const Offset(000,1000), 10000);
      await tester.pumpAndSettle();
    }else{
      await tester.fling(finder, const Offset(000,-1000), 10000);
      await tester.pumpAndSettle();
    }
  }

  Future<void> findButtonByKey(String key)async{
    final finder = find.byKey(Key(key));
    await tester.pumpAndSettle();
    expect(finder, findsOneWidget);

    await tester.tap(finder);
    await tester.pumpAndSettle();
  }

  Future<void> findBackButton()async{
    Finder finder = find.byTooltip("Back");
    if(finder.evaluate().isEmpty) {
      finder = find.byType(CupertinoNavigationBarBackButton);
    }
    await tester.pumpAndSettle();
    expect(finder, findsOneWidget);

    await tester.tap(finder);
    await tester.pumpAndSettle();
  }
}