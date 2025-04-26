import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:nagwa_task/core/utils/database_manager.dart';
import 'package:nagwa_task/features/books/domain/entities/books_entity.dart';

/// Abstract class for the books local data source
abstract class BooksLocalDataSource {
  /// Fetches a list of books from the local data source
  ///
  /// Returns a [BooksEntity] object containing the list of books
  /// and pagination information
  Future<BooksEntity?> getBooksFromLocal();

  /// Saves a list of books to the local data source
  ///
  /// Returns a [BooksEntity] object containing the list of books
  /// and pagination information
  Future<void> saveBooksToLocal(BooksEntity books);
}

/// Implementation of the [BooksLocalDataSource] abstract class
@LazySingleton(as: BooksLocalDataSource)
class BooksLocalDataSourceImpl extends BooksLocalDataSource {
  @override
  Future<BooksEntity?> getBooksFromLocal() async {
    final box = await Hive.openBox<BooksEntity>(HiveBoxes.books.name);
    return box.values.firstOrNull;
  }

  @override
  Future<void> saveBooksToLocal(BooksEntity books) async {
    final box = await Hive.openBox<BooksEntity>(HiveBoxes.books.name);
    await box.clear();
    await box.add(books);
  }
}
