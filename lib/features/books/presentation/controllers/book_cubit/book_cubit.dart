import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_cubit.freezed.dart';
part 'book_state.dart';

/// The cubit for the book
class BookCubit extends Cubit<BookState> {
  /// Constructor
  BookCubit() : super(const BookState());

  /// Toggle the expanded state of the book
  void toggleExpanded() {
    emit(state.copyWith(isExpanded: !state.isExpanded));
  }
}
