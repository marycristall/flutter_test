import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/personal_data_screen/widgets/text_form_field_widget.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';

final personalDataStepDefinitions = [
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю фамилию$'),
    (context, tester) async {
      await tester.implicitEnterText(
          personalDataTestScreen.surnameField, 'Gosling');
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю дату рождения$'),
    (context, tester) async {
      final calendar =
          tester.widget<TextFormField>(personalDataTestScreen.dateOfBirthField);
      calendar.controller?.text = '2000-01-01';
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю имя$'),
        (context, tester) async {
      await tester.implicitEnterText(personalDataTestScreen.nameField, 'Ryan');
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю отчество$'),
        (context, tester) async {
      await tester.implicitEnterText(personalDataTestScreen.secondName, 'Nikolaevich');
    },
  ),

  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю дату рождения$'),
        (context, tester) async {
      final calendar =
      tester.widget<TextFormField>(personalDataTestScreen.dateOfBirthField);
      calendar.controller?.text = '2000-01-01';
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанные ФИО$'),
        (context, tester) async {
      await tester.pumpUntilVisible(
          personalDataTestScreen.surnameField);
      final surname = tester.widget<TextFormFieldWidget>(personalDataTestScreen.surnameField).controller?.text;
      expect(surname, 'Gosling');

     await tester.pumpUntilVisible(
         personalDataTestScreen.nameField);
     final name = tester.widget<TextFormFieldWidget>(personalDataTestScreen.nameField).controller?.text;
     expect(name, 'Ryan');

      await tester.pumpUntilVisible(
          personalDataTestScreen.secondName);
      final secondName = tester.widget<TextFormFieldWidget>(personalDataTestScreen.secondName).controller?.text;
      expect(secondName, 'Nikolaevich');

    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанную дату рождения$'),
        (context, tester) async {
          await tester.pumpUntilVisible(
              personalDataTestScreen.dateOfBirthField);
          final dateOfBirth = tester.widget<TextFormField>(personalDataTestScreen.dateOfBirthField).controller?.text;
          expect(dateOfBirth, '2000-01-01');
    },
  ),
];
