import 'package:dartz/dartz.dart';
import 'package:nagwa_task/core/errors/failures.dart';
import 'package:nagwa_task/features/books/domain/entities/books_entity.dart';

/// Abstract class for the books repository
// ignore: one_member_abstracts
abstract class BooksRepository {
  /// Fetches a list of books from the remote data source
  ///
  /// Returns a [BooksEntity] object containing the list of books
  /// and pagination information
  // usecase file name : fetch_books_from_remote_usecase.dart
  Future<Either<Failure, BooksEntity>> fetchBooksFromRemote({
    required int page,
    String? search,
  });

  /// Fetches a list of books from the local data source
  ///
  /// Returns a [BooksEntity] object containing the list of books
  /// and pagination information
  // usecase file name : fetch_books_from_local_usecase.dart
  Future<Either<Failure, BooksEntity?>> fetchBooksFromLocal({
    String? search,
  });
}
