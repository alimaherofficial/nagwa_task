import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nagwa_task/core/base_usecase.dart';
import 'package:nagwa_task/core/errors/failures.dart';
import 'package:nagwa_task/core/utils/database_manager.dart';
import 'package:nagwa_task/features/splash/domain/repositories/splash_repo.dart';

/// a use case that returns the saved language
@lazySingleton
class GetSavedLangUseCase implements BaseUseCase<Language, NoParameters> {
  /// constructor for the use case that takes a [SplashRepo] as a parameter
  GetSavedLangUseCase({required this.splashRepo});

  /// a [SplashRepo] instance to be used in the use case
  final SplashRepo splashRepo;

  @override
  Future<Either<Failure, Language>> call(NoParameters params) =>
      splashRepo.getSavedLang();
}
