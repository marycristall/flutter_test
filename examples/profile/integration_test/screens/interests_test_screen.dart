import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
///import 'package:profile/features/profile/screens/about_me_screen/about_me_screen.dart';
import 'package:profile/features/profile/screens/interests_screen/interests_screen.dart';


class InterestsTestScreen {
  /// Экран выбора интересов
  final Finder trait = find.byType(InterestsScreen);

  /// Поле "Food and drink"
  final Finder intersElem_1 = find.byWidgetPredicate((widget) => widget is Text && widget.data == 'Food and drink');

  /// Поле "Quotes"
  final Finder intersElem_2 = find.byWidgetPredicate((widget) => widget is Text && widget.data == 'Quotes');

///final Finder intersElem_2 = find.widgetWithText(Checkbox,'Quotes');
/// Родитель
/// final Finder intersElem_3 = find.ancestor(of: find.text('Quotes'), matching: find.byType(Row));
/// Потомок чекбокс
///final Finder intersElem_4 = find.descendant(of: intersElem_3, matching: find.byType(Checkbox));
}