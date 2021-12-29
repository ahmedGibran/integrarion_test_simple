import 'package:integartion_test_simple/main.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:integartion_test_simple/main.dart' as app;

Future<void> main()async{
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("",(tester)async{
     app.main();
     await tester.pumpAndSettle();
     expect(find.text("You have pushed the button this many times:"),findsOneWidget);
     expect(find.text("0"),findsOneWidget);

     final Finder floatingButton = find.byTooltip("Increment");

     await tester.tap(floatingButton);
     await tester.pumpAndSettle();
     expect(find.text("1"),findsOneWidget);



  });
}