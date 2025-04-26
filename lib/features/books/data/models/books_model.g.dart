// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BooksModel _$BooksModelFromJson(Map<String, dynamic> json) => _BooksModel(
  count: (json['count'] as num?)?.toInt(),
  next: json['next'] as String?,
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => ResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$BooksModelToJson(_BooksModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'results': instance.results,
    };

_ResultModel _$ResultModelFromJson(Map<String, dynamic> json) => _ResultModel(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  authors:
      (json['authors'] as List<dynamic>?)
          ?.map((e) => AuthorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  summaries:
      (json['summaries'] as List<dynamic>?)?.map((e) => e as String).toList(),
  formats:
      json['formats'] == null
          ? null
          : FormatsModel.fromJson(json['formats'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ResultModelToJson(_ResultModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'authors': instance.authors,
      'summaries': instance.summaries,
      'formats': instance.formats,
    };

_AuthorModel _$AuthorModelFromJson(Map<String, dynamic> json) =>
    _AuthorModel(name: json['name'] as String?);

Map<String, dynamic> _$AuthorModelToJson(_AuthorModel instance) =>
    <String, dynamic>{'name': instance.name};

_FormatsModel _$FormatsModelFromJson(Map<String, dynamic> json) =>
    _FormatsModel(imageJpeg: json['image/jpeg'] as String?);

Map<String, dynamic> _$FormatsModelToJson(_FormatsModel instance) =>
    <String, dynamic>{'image/jpeg': instance.imageJpeg};
