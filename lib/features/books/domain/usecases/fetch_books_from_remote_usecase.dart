import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nagwa_task/core/base_usecase.dart';
import 'package:nagwa_task/core/errors/failures.dart';
import 'package:nagwa_task/features/books/domain/entities/books_entity.dart';
import 'package:nagwa_task/features/books/domain/repositories/books_repo.dart';

/// Usecase for fetching books from remote
@lazySingleton
class FetchBooksFromRemoteUsecase
    extends BaseUseCase<BooksEntity, FetchBooksFromRemoteUsecaseParameters> {
  /// Constructor for the [FetchBooksFromRemoteUsecase] class
  ///
  /// [booksRepository] - The repository for fetching books
  FetchBooksFromRemoteUsecase({required this.booksRepository});

  /// The repository for fetching books
  final BooksRepository booksRepository;

  @override
  Future<Either<Failure, BooksEntity>> call(
    FetchBooksFromRemoteUsecaseParameters parameters,
  ) async {
    final result = await booksRepository.fetchBooksFromRemote(
      search: parameters.search,
      page: parameters.page,
    );
    return result;
  }
}

/// Parameters for the [FetchBooksFromRemoteUsecase] class
class FetchBooksFromRemoteUsecaseParameters {
  /// Constructor for the [FetchBooksFromRemoteUsecaseParameters] class
  ///
  /// [search] - The search query for the books
  /// [page] - The page number for the books
  const FetchBooksFromRemoteUsecaseParameters({
    required this.page,
    this.search,
  });

  /// The search query for the books
  final String? search;

  /// The page number for the books
  final int page;
}
