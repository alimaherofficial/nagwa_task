import 'package:injectable/injectable.dart';
import 'package:nagwa_task/core/injection_container.dart';
import 'package:nagwa_task/core/utils/database_manager.dart';

/// this class is responsible for saving and getting the language code
abstract class SplashLocalDataSource {
  /// saves the language code in the database
  Future<bool> changeLang({required Language langCode});

  /// get the saved language code
  Future<Language> getSavedLang();
}

/// this class is responsible for saving and getting the language code
/// it implements [SplashLocalDataSource]
@LazySingleton(as: SplashLocalDataSource)
class SplashLocalDataSourceImpl implements SplashLocalDataSource {
  /// Constructor
  SplashLocalDataSourceImpl();

  @override
  Future<bool> changeLang({required Language langCode}) async {
    try {
      await getIt<DatabaseManager>().setLanguage(langCode);
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @override
  Future<Language> getSavedLang() async {
    return getIt<DatabaseManager>().getLanguage();
  }
}
