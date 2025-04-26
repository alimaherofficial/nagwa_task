import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nagwa_task/core/injection_container.dart';
import 'package:nagwa_task/core/presentation/widgets/adaptive_layout.dart';
import 'package:nagwa_task/features/books/domain/usecases/fetch_books_from_local_usecase.dart';
import 'package:nagwa_task/features/books/domain/usecases/fetch_books_from_remote_usecase.dart';
import 'package:nagwa_task/features/books/presentation/controllers/books_cubit/books_cubit.dart';
import 'package:nagwa_task/features/books/presentation/pages/books_screen_mobile.dart';

/// this screen is used to display the books
class BooksScreen extends StatelessWidget {
  /// constructor
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => BooksCubit(
            getIt.get<FetchBooksFromRemoteUsecase>(),
            getIt.get<FetchBooksFromLocalUsecase>(),
          )..getBooksFromRemote(),
      child: AdaptiveLayout(
        mobileLayout: (context) => const BooksScreenMobile(),
        // we can replace this later with the tablet layout if we want
        tabletLayout: (context) => const BooksScreenMobile(),
        // we can replace this later with the web layout if we want
        webLayout: (context) => const BooksScreenMobile(),
      ),
    );
  }
}
