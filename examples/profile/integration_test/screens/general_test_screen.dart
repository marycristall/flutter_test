import 'package:flutter_test/flutter_test.dart';
import 'package:profile/assets/strings/test_keys.dart';
///import 'package:profile/features/profile/widgets/next_button.dart';

class GeneralTestScreen {
  /// Кнопка далее, отрефакторила,
  /// изменив на поиск по ключу, чтобы срабатывало на всех экранах
  final Finder nextBtn = find.byKey(TestKeys.buttonGoNext);
}
