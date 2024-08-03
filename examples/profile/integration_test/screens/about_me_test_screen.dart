import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/assets/strings/test_keys.dart';
import 'package:profile/features/profile/screens/about_me_screen/about_me_screen.dart';

class AboutMeTestScreen {
  /// Экран данных о себе
  final Finder trait = find.byType(AboutMeScreen);
  /// Поле ввода информации о себе
  final Finder aboutMeField =
  find.byWidgetPredicate((widget) => widget is TextFormField && widget.key == TestKeys.aboutMeTextField);
  ///Кнопка сохранения
  final Finder saveButton =
  find.byKey(TestKeys.okOrSaveButton);

}

