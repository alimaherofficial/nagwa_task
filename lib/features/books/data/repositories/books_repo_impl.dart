import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nagwa_task/core/errors/failures.dart';
import 'package:nagwa_task/features/books/data/datasources/books_local_datesource.dart';
import 'package:nagwa_task/features/books/data/datasources/books_remote_datesource.dart';
import 'package:nagwa_task/features/books/domain/entities/books_entity.dart';
import 'package:nagwa_task/features/books/domain/repositories/books_repo.dart';

/// Implementation of the [BooksRepository] interface
@LazySingleton(as: BooksRepository)
class BooksRepositoryImpl extends BooksRepository {
  /// Constructor for the [BooksRepositoryImpl] class
  ///
  /// [remoteDataSource] - The remote data source for fetching books
  /// [localDataSource] - The local data source for saving and retrieving books
  BooksRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  /// The remote data source for fetching books
  final BooksRemoteDataSource remoteDataSource;

  /// The local data source for saving and retrieving books
  final BooksLocalDataSource localDataSource;

  @override
  Future<Either<Failure, BooksEntity>> fetchBooksFromRemote({
    required int page,
    String? search,
  }) async {
    try {
      final books = await remoteDataSource.fetchBooks(page: page);
      await localDataSource.saveBooksToLocal(books);
      return right(books);
    } on Exception catch (e) {
      return left(Failure.fromObject(e));
    }
  }

  @override
  Future<Either<Failure, BooksEntity?>> fetchBooksFromLocal({
    String? search,
  }) async {
    try {
      final books = await localDataSource.getBooksFromLocal();
      if (books == null) {
        return left(
          Failure.fromObject(Exception('No books found in local storage')),
        );
      }
      return right(books);
    } on Exception catch (e) {
      return left(Failure.fromObject(e));
    }
  }
}
