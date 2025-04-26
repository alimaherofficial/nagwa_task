import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nagwa_task/features/books/data/models/books_model.dart';
import 'package:nagwa_task/features/books/domain/entities/books_entity.dart';
import 'package:nagwa_task/features/books/domain/usecases/fetch_books_from_local_usecase.dart';
import 'package:nagwa_task/features/books/domain/usecases/fetch_books_from_remote_usecase.dart';

part 'books_cubit.freezed.dart';
part 'books_state.dart';

/// this cubit is used to manage the books state
class BooksCubit extends Cubit<BooksState> {
  /// constructor
  BooksCubit(
    this._fetchBooksFromRemoteUsecase,
    this._fetchBooksFromLocalUsecase,
  ) : super(BooksState.initial());

  final FetchBooksFromRemoteUsecase _fetchBooksFromRemoteUsecase;
  final FetchBooksFromLocalUsecase _fetchBooksFromLocalUsecase;

  /// this function is used to get the books
  Future<void> _getBooksFromLocal({String? search}) async {
    final result = await _fetchBooksFromLocalUsecase.call(search);
    result.fold(
      (l) => emit(state.copyWith(status: BooksStateStatus.error)),
      (r) => emit(state.copyWith(status: BooksStateStatus.loaded, books: r)),
    );
  }

  /// this function is used to get the books from remote
  Future<void> getBooksFromRemote({String? search}) async {
    emit(state.copyWith(status: BooksStateStatus.loading));
    final result = await _fetchBooksFromRemoteUsecase.call(
      FetchBooksFromRemoteUsecaseParameters(page: state.page, search: search),
    );
    await result.fold(
      (l) async {
        await _getBooksFromLocal(search: search);
        emit(state.copyWith(errorMessage: l.errMessage));
      },
      (r) {
        final nextPage = Uri.parse(r.next ?? '').queryParameters['page'];
        if (state.books == null) {
          emit(
            state.copyWith(
              status: BooksStateStatus.loaded,
              books: (r as BooksModel).copyWith(next: nextPage),
            ),
          );
        } else {
          emit(
            state.copyWith(
              status: BooksStateStatus.loaded,
              books: (state.books! as BooksModel).copyWith(
                next: nextPage,
                count: r.count,
                results: [
                  ...(state.books!.results! as List<ResultModel>),
                  ...(r.results! as List<ResultModel>),
                ],
              ),
            ),
          );
        }
      },
    );
  }

  /// this function is used to get the books
  bool get isLoaded =>
      state.status == BooksStateStatus.loaded &&
      state.books != null &&
      state.books!.results != null &&
      state.books!.results!.isNotEmpty;
}
