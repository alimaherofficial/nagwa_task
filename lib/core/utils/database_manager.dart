import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:nagwa_task/core/utils/hive/hive_registrar.g.dart';

/// The language of the app
enum Language {
  /// English
  en(realName: 'English'),

  /// Arabic
  ar(realName: 'Arabic (العربية)');

  /// The constructor
  const Language({required this.realName});

  /// The real name of the language
  final String realName;
}

/// This class is used to manage the database
@lazySingleton
class DatabaseManager {
  /// The box of the Hive database
  late Box<dynamic> _appBox;

  /// Initializes Hive and opens the 'appBox'.
  Future<void> initHive() async {
    await Hive.initFlutter();
    Hive.registerAdapters();
    _appBox = await Hive.openBox<dynamic>(HiveBoxes.app.name);
  }

  /// Sets the language in the database
  Future<void> setLanguage(Language langCode) async {
    await _appBox.put('language', langCode.name);
  }

  /// Gets the saved language from the database
  Language getLanguage() {
    final langString = _appBox.get('language', defaultValue: Language.en.name);
    return Language.values.firstWhere((lang) => lang.name == langString);
  }
}

/// The boxes of the Hive database
enum HiveBoxes {
  /// The books box
  books,

  /// The app box
  app,
}
