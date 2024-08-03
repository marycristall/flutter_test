import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';

final aboutMeStepDefinitions = [
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу экран данных о себе$'),
        (context, tester) async {
      await tester.pumpUntilVisible(interestsTestScreen.trait);
      expect(interestsTestScreen.trait, findsWidgets);
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю информацию о себе и сохраняю данные$'),
        (context, tester) async {
          await tester.implicitEnterText(aboutMeTestScreen.aboutMeField, "I'm a cat");
          await tester.implicitTap(aboutMeTestScreen.saveButton);
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанную информацию о себе$'),
        (context, tester) async {
          await tester.pumpUntilVisible(aboutMeTestScreen.aboutMeField);
      final aboutMeInf = tester.widget<TextFormField>(aboutMeTestScreen.aboutMeField).controller?.text;
      expect(aboutMeInf, "I'm a cat");
    },
  ),
];

