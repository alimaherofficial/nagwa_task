import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nagwa_task/core/errors/failures.dart';
import 'package:nagwa_task/core/utils/database_manager.dart';
import 'package:nagwa_task/features/splash/data/datasources/splash_local_datasource.dart';
import 'package:nagwa_task/features/splash/domain/repositories/splash_repo.dart';

/// LangRepoImpl is the implementation of [SplashRepo]
@LazySingleton(as: SplashRepo)
class SplashRepoImpl implements SplashRepo {
  /// Constructor
  SplashRepoImpl({required this.splashLocalDataSource});

  /// a [splashLocalDataSource] object
  final SplashLocalDataSource splashLocalDataSource;

  @override
  Future<Either<Failure, bool>> changeLang({required Language langCode}) async {
    try {
      final langIsChanged = await splashLocalDataSource.changeLang(
        langCode: langCode,
      );
      return Right(langIsChanged);
    } on Exception catch (e) {
      return Left(Failure.fromObject(e));
    }
  }

  @override
  Future<Either<Failure, Language>> getSavedLang() async {
    try {
      final langCode = await splashLocalDataSource.getSavedLang();
      return Right(langCode);
    } on Exception catch (e) {
      return Left(Failure.fromObject(e));
    }
  }
}
