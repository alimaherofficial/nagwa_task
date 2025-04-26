part of 'book_cubit.dart';

/// The state of the book cubit
@freezed
abstract class BookState with _$BookState {
  /// Constructor
  const factory BookState({
    /// Whether the book is expanded
    @Default(false) bool isExpanded,
  }) = _BookState;
}
