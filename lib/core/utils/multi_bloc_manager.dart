import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nagwa_task/core/injection_container.dart';
import 'package:nagwa_task/features/books/domain/usecases/fetch_books_from_local_usecase.dart';
import 'package:nagwa_task/features/books/domain/usecases/fetch_books_from_remote_usecase.dart';
import 'package:nagwa_task/features/books/presentation/controllers/books_cubit/books_cubit.dart';
import 'package:nagwa_task/features/splash/domain/usecases/change_lang.dart';
import 'package:nagwa_task/features/splash/domain/usecases/get_saved_lang.dart';
import 'package:nagwa_task/features/splash/presentation/cubit/main/main_cubit.dart';

/// this class is used to manage the multi bloc provider and multi bloc listener
// ignore: depend_on_referenced_packages
import 'package:provider/single_child_widget.dart';

/// this class is used to manage the multi bloc provider and multi bloc listener
class MultiBlocManager {
  /// this method is used to get the multi bloc provider list
  static List<SingleChildWidget> multiBlocProviderList = [
    BlocProvider(
      create:
          (context) => MainCubit(
            getIt.get<GetSavedLangUseCase>(),
            getIt.get<ChangeLangUseCase>(),
          )..getSavedLang(),
    ),
    BlocProvider(
      create:
          (context) =>
              BooksCubit(
                  getIt.get<FetchBooksFromRemoteUsecase>(),
                  getIt.get<FetchBooksFromLocalUsecase>(),
                )
                ..setupScrollListener()
                ..getBooksFromRemote(),
    ),
  ];

  /// this method is used to get the multi bloc listener list
  static List<SingleChildWidget> get multiBlocListenersList {
    return [
      // main cubit listener
      BlocListener<MainCubit, MainState>(listener: (context, state) {}),
    ];
  }
}
