import 'package:intl/intl.dart';
import 'package:nagwa_task/core/utils/database_manager.dart';

/// this class is used to manage the locale
class LocaleHelper {
  /// checks if the current locale is arabic
  static bool get isArabic => Intl.getCurrentLocale() == Language.ar.name;
}
