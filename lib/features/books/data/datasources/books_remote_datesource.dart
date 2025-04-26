import 'package:injectable/injectable.dart';
import 'package:nagwa_task/core/api/dio_helper.dart';
import 'package:nagwa_task/core/api/endpoints.dart';
import 'package:nagwa_task/features/books/data/models/books_model.dart';
import 'package:nagwa_task/features/books/domain/entities/books_entity.dart';

/// Abstract class for the books remote data source
// ignore: one_member_abstracts
abstract class BooksRemoteDataSource {
  /// Fetches a list of books from the remote data source
  ///
  /// Returns a [BooksEntity] object containing the list of books
  /// and pagination information
  Future<BooksEntity> fetchBooks({
    required int page,
    String? search,
  });
}

/// Implementation of the [BooksRemoteDataSource] interface
@LazySingleton(as: BooksRemoteDataSource)
class BooksRemoteDataSourceImpl implements BooksRemoteDataSource {
  /// Fetches a list of books from the remote data source
  ///
  /// Returns a [BooksEntity] object containing the list of books
  /// and pagination information
  @override
  Future<BooksEntity> fetchBooks({
    required int page,
    String? search,
  }) async {
    final response = await DioHelper.getData(
      url: EndPoints.books,
      queryParameters: {
        'page': page,
        'search': search,
      },
    );
    return BooksModel.fromJson(response.data as Map<String, dynamic>);
  }
}
