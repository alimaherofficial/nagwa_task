// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../features/books/data/datasources/books_local_datesource.dart'
    as _i185;
import '../features/books/data/datasources/books_remote_datesource.dart'
    as _i945;
import '../features/books/data/repositories/books_repo_impl.dart' as _i756;
import '../features/books/domain/repositories/books_repo.dart' as _i438;
import '../features/books/domain/usecases/fetch_books_from_local_usecase.dart'
    as _i343;
import '../features/books/domain/usecases/fetch_books_from_remote_usecase.dart'
    as _i148;
import '../features/splash/data/datasources/splash_local_datasource.dart'
    as _i277;
import '../features/splash/data/repositories/splash_repo_impl.dart' as _i653;
import '../features/splash/domain/repositories/splash_repo.dart' as _i716;
import '../features/splash/domain/usecases/change_lang.dart' as _i318;
import '../features/splash/domain/usecases/get_saved_lang.dart' as _i445;
import 'utils/database_manager.dart' as _i273;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i273.DatabaseManager>(() => _i273.DatabaseManager());
    gh.lazySingleton<_i277.SplashLocalDataSource>(
      () => _i277.SplashLocalDataSourceImpl(),
    );
    gh.lazySingleton<_i945.BooksRemoteDataSource>(
      () => _i945.BooksRemoteDataSourceImpl(),
    );
    gh.lazySingleton<_i185.BooksLocalDataSource>(
      () => _i185.BooksLocalDataSourceImpl(),
    );
    gh.lazySingleton<_i716.SplashRepo>(
      () => _i653.SplashRepoImpl(
        splashLocalDataSource: gh<_i277.SplashLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i438.BooksRepository>(
      () => _i756.BooksRepositoryImpl(
        remoteDataSource: gh<_i945.BooksRemoteDataSource>(),
        localDataSource: gh<_i185.BooksLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i445.GetSavedLangUseCase>(
      () => _i445.GetSavedLangUseCase(splashRepo: gh<_i716.SplashRepo>()),
    );
    gh.lazySingleton<_i318.ChangeLangUseCase>(
      () => _i318.ChangeLangUseCase(splashRepo: gh<_i716.SplashRepo>()),
    );
    gh.lazySingleton<_i148.FetchBooksFromRemoteUsecase>(
      () => _i148.FetchBooksFromRemoteUsecase(
        booksRepository: gh<_i438.BooksRepository>(),
      ),
    );
    gh.lazySingleton<_i343.FetchBooksFromLocalUsecase>(
      () => _i343.FetchBooksFromLocalUsecase(
        booksRepository: gh<_i438.BooksRepository>(),
      ),
    );
    return this;
  }
}
