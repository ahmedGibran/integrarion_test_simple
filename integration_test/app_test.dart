import 'package:integartion_test_simple/main.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:integartion_test_simple/main.dart' as app;

import 'robots/home_robot.dart';
import 'robots/second_robot.dart';

Future<void> main()async{
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  HomeRobot homeRobot;
  SecondRobot secondRobot;
  setUp((){

  });

  testWidgets("",(tester)async{
    app.main();
    await tester.pumpAndSettle();

    homeRobot= HomeRobot(tester: tester);
    await tester.pumpAndSettle();

    await homeRobot.findText("Home");
    await  homeRobot.navigateToSecondScreen();


    secondRobot= SecondRobot(tester: tester);
    await tester.pumpAndSettle();

    await secondRobot.findText("Second");
    await  secondRobot.scrollUp(scroll: false,key: "second_listTile");
    await  secondRobot.findButtonByKey("second_navigate_third_screen");


  });
}