// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BooksModel {

@JsonKey(name: 'count') int? get count;@JsonKey(name: 'next') String? get next;@JsonKey(name: 'results') List<ResultModel>? get results;

  /// Serializes this BooksModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BooksModel&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,next,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'BooksModel(count: $count, next: $next, results: $results)';
}


}




/// @nodoc
@JsonSerializable()

class _BooksModel extends BooksModel {
   _BooksModel({@JsonKey(name: 'count') this.count, @JsonKey(name: 'next') this.next, @JsonKey(name: 'results') final  List<ResultModel>? results}): _results = results,super._();
  factory _BooksModel.fromJson(Map<String, dynamic> json) => _$BooksModelFromJson(json);

@override@JsonKey(name: 'count') final  int? count;
@override@JsonKey(name: 'next') final  String? next;
 final  List<ResultModel>? _results;
@override@JsonKey(name: 'results') List<ResultModel>? get results {
  final value = _results;
  if (value == null) return null;
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}



@override
Map<String, dynamic> toJson() {
  return _$BooksModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BooksModel&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,next,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'BooksModel(count: $count, next: $next, results: $results)';
}


}





/// @nodoc
mixin _$ResultModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'title') String? get title;@JsonKey(name: 'authors') List<AuthorModel>? get authors;@JsonKey(name: 'summaries') List<String>? get summaries;@JsonKey(name: 'formats') FormatsModel? get formats;

  /// Serializes this ResultModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.authors, authors)&&const DeepCollectionEquality().equals(other.summaries, summaries)&&(identical(other.formats, formats) || other.formats == formats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(authors),const DeepCollectionEquality().hash(summaries),formats);

@override
String toString() {
  return 'ResultModel(id: $id, title: $title, authors: $authors, summaries: $summaries, formats: $formats)';
}


}




/// @nodoc
@JsonSerializable()

class _ResultModel extends ResultModel {
   _ResultModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'title') this.title, @JsonKey(name: 'authors') final  List<AuthorModel>? authors, @JsonKey(name: 'summaries') final  List<String>? summaries, @JsonKey(name: 'formats') this.formats}): _authors = authors,_summaries = summaries,super._();
  factory _ResultModel.fromJson(Map<String, dynamic> json) => _$ResultModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'title') final  String? title;
 final  List<AuthorModel>? _authors;
@override@JsonKey(name: 'authors') List<AuthorModel>? get authors {
  final value = _authors;
  if (value == null) return null;
  if (_authors is EqualUnmodifiableListView) return _authors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _summaries;
@override@JsonKey(name: 'summaries') List<String>? get summaries {
  final value = _summaries;
  if (value == null) return null;
  if (_summaries is EqualUnmodifiableListView) return _summaries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'formats') final  FormatsModel? formats;


@override
Map<String, dynamic> toJson() {
  return _$ResultModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResultModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._authors, _authors)&&const DeepCollectionEquality().equals(other._summaries, _summaries)&&(identical(other.formats, formats) || other.formats == formats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_authors),const DeepCollectionEquality().hash(_summaries),formats);

@override
String toString() {
  return 'ResultModel(id: $id, title: $title, authors: $authors, summaries: $summaries, formats: $formats)';
}


}





/// @nodoc
mixin _$AuthorModel {

@JsonKey(name: 'name') String? get name;

  /// Serializes this AuthorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'AuthorModel(name: $name)';
}


}




/// @nodoc
@JsonSerializable()

class _AuthorModel extends AuthorModel {
   _AuthorModel({@JsonKey(name: 'name') this.name}): super._();
  factory _AuthorModel.fromJson(Map<String, dynamic> json) => _$AuthorModelFromJson(json);

@override@JsonKey(name: 'name') final  String? name;


@override
Map<String, dynamic> toJson() {
  return _$AuthorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'AuthorModel(name: $name)';
}


}





/// @nodoc
mixin _$FormatsModel {

@JsonKey(name: 'image/jpeg') String? get imageJpeg;

  /// Serializes this FormatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatsModel&&(identical(other.imageJpeg, imageJpeg) || other.imageJpeg == imageJpeg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageJpeg);

@override
String toString() {
  return 'FormatsModel(imageJpeg: $imageJpeg)';
}


}




/// @nodoc
@JsonSerializable()

class _FormatsModel extends FormatsModel {
   _FormatsModel({@JsonKey(name: 'image/jpeg') this.imageJpeg}): super._();
  factory _FormatsModel.fromJson(Map<String, dynamic> json) => _$FormatsModelFromJson(json);

@override@JsonKey(name: 'image/jpeg') final  String? imageJpeg;


@override
Map<String, dynamic> toJson() {
  return _$FormatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormatsModel&&(identical(other.imageJpeg, imageJpeg) || other.imageJpeg == imageJpeg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageJpeg);

@override
String toString() {
  return 'FormatsModel(imageJpeg: $imageJpeg)';
}


}




// dart format on
