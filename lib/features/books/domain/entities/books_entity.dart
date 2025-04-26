import 'package:hive_ce/hive.dart';

/// Represents a collection of books with pagination information
class BooksEntity extends HiveObject {
  /// Creates a new instance of [BooksEntity]
  ///
  /// [count] - Total number of books in the collection
  /// [next] - URL for the next page of results
  /// [previous] - URL for the previous page of results
  /// [results] - List of book results
  BooksEntity({this.count, this.next, this.previous, this.results});

  /// Total number of books in the collection

  final int? count;

  /// URL for the next page of results
  final String? next;

  /// URL for the previous page of results
  final String? previous;

  /// List of book results
  final List<ResultEntity>? results;

  /// copy with
  BooksEntity copyWith({
    int? count,
    String? next,
    String? previous,
    List<ResultEntity>? results,
  }) {
    return BooksEntity(
      count: count ?? this.count,
      next: next ?? this.next,
      previous: previous ?? this.previous,
      results: results ?? this.results,
    );
  }
}

/// Represents a single book result with its details
class ResultEntity extends HiveObject {
  /// Creates a new instance of [ResultEntity]
  ///
  /// [id] - Unique identifier of the book
  /// [title] - Title of the book
  /// [authors] - List of authors who wrote the book
  /// [summaries] - List of summaries for the book
  /// [formats] - Available formats of the book

  ResultEntity({
    this.id,
    this.title,
    this.authors,
    this.summaries,
    this.formats,
  });

  /// Unique identifier of the book
  final int? id;

  /// Title of the book
  final String? title;

  /// List of authors who wrote the book
  final List<AuthorEntity>? authors;

  /// List of summaries for the book
  final List<String>? summaries;

  /// Available formats of the book
  final FormatsEntity? formats;

  /// copy with
  ResultEntity copyWith({
    int? id,
    String? title,
    List<AuthorEntity>? authors,
    List<String>? summaries,
    FormatsEntity? formats,
  }) {
    return ResultEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      authors: authors ?? this.authors,
      summaries: summaries ?? this.summaries,
      formats: formats ?? this.formats,
    );
  }
}

/// Represents an author with their biographical information
class AuthorEntity extends HiveObject {
  /// Creates a new instance of [AuthorEntity]
  ///
  /// [name] - Name of the author
  AuthorEntity({this.name});

  /// Name of the author

  final String? name;

  /// copy with
  AuthorEntity copyWith({String? name}) {
    return AuthorEntity(name: name ?? this.name);
  }
}

/// Represents the different formats available for a book
class FormatsEntity extends HiveObject {
  /// Creates a new instance of [FormatsEntity]
  /// [imageJpeg] - JPEG image format URL
  FormatsEntity({this.imageJpeg});

  /// JPEG image format URL

  final String? imageJpeg;

  /// copy with
  FormatsEntity copyWith({String? imageJpeg}) {
    return FormatsEntity(imageJpeg: imageJpeg ?? this.imageJpeg);
  }
}
