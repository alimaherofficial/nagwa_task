part of 'books_cubit.dart';

/// The status of the books state
enum BooksStateStatus {
  /// The initial state
  initial,

  /// The loading state
  loading,

  /// The loaded state
  loaded,

  /// The error state
  error,
}

/// this class is used to manage the books state
@freezed
abstract class BooksState with _$BooksState {
  /// The initial state
  const factory BooksState({
    required TextEditingController searchController,
    @Default(BooksStateStatus.initial) BooksStateStatus status,
    BooksEntity? books,
    @Default(1) int page,
    String? errorMessage,
  }) = _BooksState;

  /// The initial state
  factory BooksState.initial() =>
      BooksState(searchController: TextEditingController());
}
