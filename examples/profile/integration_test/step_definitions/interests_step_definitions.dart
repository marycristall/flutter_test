import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';

final interestsStepDefinitions = [
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу экран выбора интересов$'),
        (context, tester) async {
      await tester.pumpUntilVisible(interestsTestScreen.trait);
      expect(interestsTestScreen.trait, findsWidgets);
    },
  ),
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю интересы$'),
        (context, tester) async {
     /// await tester.implicitTap(interestsTestScreen.intersElem_1);
      await tester.implicitTap(interestsTestScreen.intersElem_2);
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанные интересы$'),
        (context, tester) async {
      await tester.pumpUntilVisible(interestsTestScreen.intersElem_1);
     await tester.pumpUntilVisible(interestsTestScreen.intersElem_2);
          ///   Я так и не поняла, как соединить в одну цепочку поиск предка, затем потомка, и результат,
          ///   получались не связанные выводы.
          ///   await tester.pumpUntilVisible(
        ///         interestsTestScreen.intersElem_2);
        ///    expect((tester.widget(interestsTestScreen.intersElem_4) as Checkbox).value, true);
    },
  ),
];

