import 'package:dartz/dartz.dart';
import 'package:nagwa_task/core/errors/failures.dart';
import 'package:nagwa_task/core/utils/database_manager.dart';

/// abstract interface class for Splash repository
abstract interface class SplashRepo {
  /// saves the language code
  Future<Either<Failure, bool>> changeLang({required Language langCode});

  /// gets the saved language code
  Future<Either<Failure, Language>> getSavedLang();
}
