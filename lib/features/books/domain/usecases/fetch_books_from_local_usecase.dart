import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nagwa_task/core/base_usecase.dart';
import 'package:nagwa_task/core/errors/failures.dart';
import 'package:nagwa_task/features/books/domain/entities/books_entity.dart';
import 'package:nagwa_task/features/books/domain/repositories/books_repo.dart';

/// Usecase for fetching books from local
@lazySingleton
class FetchBooksFromLocalUsecase extends BaseUseCase<BooksEntity?, String?> {
  /// Constructor for the [FetchBooksFromLocalUsecase] class
  ///
  /// [booksRepository] - The repository for fetching books
  FetchBooksFromLocalUsecase({required this.booksRepository});

  /// The repository for fetching books
  final BooksRepository booksRepository;

  @override
  Future<Either<Failure, BooksEntity?>> call(String? parameters) async {
    final result = await booksRepository.fetchBooksFromLocal(
      search: parameters,
    );
    return result;
  }
}
