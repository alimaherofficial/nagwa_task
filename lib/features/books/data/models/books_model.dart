import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nagwa_task/features/books/domain/entities/books_entity.dart';

part 'books_model.freezed.dart';
part 'books_model.g.dart';

/// Books Model
@Freezed(copyWith: false)
abstract class BooksModel extends BooksEntity with _$BooksModel {
  /// Books Model Constructor
  factory BooksModel({
    @JsonKey(name: 'count') int? count,
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'results') List<ResultModel>? results,
  }) = _BooksModel;

  /// Private constructor needed for Freezed when extending a class
  BooksModel._();

  /// Books Model From Json
  factory BooksModel.fromJson(Map<String, dynamic> json) =>
      _$BooksModelFromJson(json);
}

/// Result Model
@Freezed(copyWith: false)
abstract class ResultModel extends ResultEntity with _$ResultModel {
  /// Result Model Constructor
  factory ResultModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'authors') List<AuthorModel>? authors,
    @JsonKey(name: 'summaries') List<String>? summaries,
    @JsonKey(name: 'formats') FormatsModel? formats,
  }) = _ResultModel;

  /// Private constructor needed for Freezed when extending a class
  ResultModel._();

  /// Result Model From Json
  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);
}

/// Author Model
@Freezed(copyWith: false)
abstract class AuthorModel extends AuthorEntity with _$AuthorModel {
  /// Author Model Constructor
  factory AuthorModel({@JsonKey(name: 'name') String? name}) = _AuthorModel;

  /// Private constructor needed for Freezed when extending a class
  AuthorModel._();

  /// Author Model From Json
  factory AuthorModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorModelFromJson(json);
}

/// Formats Model
@Freezed(copyWith: false)
abstract class FormatsModel extends FormatsEntity with _$FormatsModel {
  /// Formats Model Constructor
  factory FormatsModel({@JsonKey(name: 'image/jpeg') String? imageJpeg}) =
      _FormatsModel;

  /// Private constructor needed for Freezed when extending a class
  FormatsModel._();

  /// Formats Model From Json
  factory FormatsModel.fromJson(Map<String, dynamic> json) =>
      _$FormatsModelFromJson(json);
}
