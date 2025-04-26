import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
        state.copyWith(
          status: BooksStateStatus.loadedFromLocal,
          books: r,
          currentSearchQuery: search,
        ),
      ),
    );
  }

  /// this function is used to get the books from remote
  Future<void> getBooksFromRemote({String? search}) async {
    // Don't fetch if already loading
    if (state.status == BooksStateStatus.loading &&
        state.isLoadingMore == true) {
      return;
    }

    // If search is null but we have a currentSearchQuery, use that
    final effectiveSearch = search ?? state.currentSearchQuery;

    // If a new search is being performed, reset pagination data
    final isNewSearch = search != null && search != state.currentSearchQuery;
    if (isNewSearch) {
      emit(
        state.copyWith(
          status: BooksStateStatus.loading,
          isLoadingMore: true,
          currentSearchQuery: search,
          books: null,
          currentPage: null,
        ),
      );
    } else {
      emit(
        state.copyWith(status: BooksStateStatus.loading, isLoadingMore: true),
      );
    }

    var nextPage = 1;
    if (state.books?.next != null && !isNewSearch) {
      try {
        final uri = Uri.parse(state.books!.next!);
        final pageParam = uri.queryParameters['page'];
        if (pageParam != null) {
          nextPage = int.parse(pageParam);
        }
      } on Exception catch (_) {
        // If there's an error parsing the URL, just use the next page number
        nextPage = (state.currentPage ?? 0) + 1;
      }
    }

    // Debug log

    final result = await _fetchBooksFromRemoteUsecase.call(
      FetchBooksFromRemoteUsecaseParameters(
        page: nextPage,
        search: effectiveSearch,
      ),
    );

    await result.fold(
      (l) async {
        await _getBooksFromLocal(search: effectiveSearch);
        emit(
          state.copyWith(
            errorMessage: l.errMessage,
            isLoadingMore: false,
            currentSearchQuery: effectiveSearch,
          ),
        );
      },
      (r) {
        final origNext = r.next;

        // Debug

        if (state.books == null || isNewSearch) {
          emit(
            state.copyWith(
              status: BooksStateStatus.loadedFromRemote,
              books: r,
              isLoadingMore: false,
              currentPage: nextPage,
              currentSearchQuery: effectiveSearch,
            ),
          );
        } else {
          // Check if we received any new results
          if (r.results == null || r.results!.isEmpty) {
            emit(
              state.copyWith(
                status: BooksStateStatus.loadedFromRemote,
                books: state.books!.copyWith(next: null),
                isLoadingMore: false,
                currentPage: nextPage,
                currentSearchQuery: effectiveSearch,
              ),
            );
            return;
          }

          final fullList = [
            ...(state.books!.results ?? List<ResultEntity>.of([])),
            ...(r.results!),
          ];
          final newBooks = state.books!.copyWith(
            next: origNext,
            count: r.count,
            results: fullList,
          );
          emit(
            state.copyWith(
              status: BooksStateStatus.loadedFromRemote,
              books: newBooks,
              isLoadingMore: false,
              currentPage: nextPage,
              currentSearchQuery: effectiveSearch,
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
          getBooksFromRemote(); // No need to pass search, it will use currentSearchQuery
        }
      }
    });
  }

  /// Clear search query and reload all books
  void clearSearch() {
    if (state.currentSearchQuery != null) {
      emit(
        state.copyWith(
          currentSearchQuery: null,
          books: null,
          currentPage: null,
        ),
      );
      getBooksFromRemote();
    }
  }
}
