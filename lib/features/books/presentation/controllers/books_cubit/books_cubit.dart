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
      (r) => emit(
        state.copyWith(status: BooksStateStatus.loadedFromLocal, books: r),
      ),
    );
  }

  /// this function is used to get the books from remote
  Future<void> getBooksFromRemote({String? search}) async {
    // Don't fetch if already loading or if there are no more pages
    if (state.status == BooksStateStatus.loading ||
        (state.books?.next == null && state.page! > 0)) {
      return;
    }

    emit(state.copyWith(status: BooksStateStatus.loading));

    final result = await _fetchBooksFromRemoteUsecase.call(
      FetchBooksFromRemoteUsecaseParameters(
        page: state.page! + 1,
        search: search,
      ),
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
              status: BooksStateStatus.loadedFromRemote,
              books: (r as BooksModel).copyWith(next: r.next),
              page: int.tryParse(nextPage ?? '0') ?? 0,
            ),
          );
        } else {
          // Check if we received any new results
          if (r.results == null || r.results!.isEmpty) {
            emit(
              state.copyWith(
                status: BooksStateStatus.loadedFromRemote,
                books: state.books!.copyWith(next: null),
              ),
            );
            return;
          }

          emit(
            state.copyWith(
              status: BooksStateStatus.loadedFromRemote,
              books: state.books!.copyWith(
                next: r.next,
                count: r.count,
                results: [...(state.books!.results ?? []), ...(r.results!)],
              ),
              page: int.tryParse(nextPage ?? '0') ?? state.page,
            ),
          );
        }
      },
    );
  }

  /// this function is used to get the books
  bool get isLoaded =>
      (state.status == BooksStateStatus.loadedFromRemote ||
          state.status == BooksStateStatus.loadedFromLocal ||
          state.status == BooksStateStatus.loading) &&
      state.books != null &&
      state.books!.results != null &&
      state.books!.results!.isNotEmpty;

  /// this function is used to setup the scroll listener
  void setupScrollListener() {
    state.scrollController.addListener(() {
      if (state.scrollController.position.pixels >=
          state.scrollController.position.maxScrollExtent * 0.8) {
        if (state.status != BooksStateStatus.loading &&
            state.books?.next != null) {
          getBooksFromRemote();
        }
      }
    });
  }
}
