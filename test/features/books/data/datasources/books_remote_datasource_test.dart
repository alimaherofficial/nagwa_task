// write basic test for books remote datasource
import 'package:flutter_test/flutter_test.dart';
import 'package:nagwa_task/features/books/data/datasources/books_remote_datesource.dart';
import 'package:nagwa_task/features/books/domain/entities/books_entity.dart';

void main() {
  test('example for books remote datasource unit test with page 1', () async {
    final booksRemoteDatasource = BooksRemoteDataSourceImpl();
    final result = await booksRemoteDatasource.fetchBooks(page: 1);
    expect(result, isA<BooksEntity>());
  });

  test('example for books remote datasource unit test with search', () async {
    final booksRemoteDatasource = BooksRemoteDataSourceImpl();
    final result = await booksRemoteDatasource.fetchBooks(page: 1, search: 'test');
    expect(result, isA<BooksEntity>());
  });
}
