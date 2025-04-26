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
/// Create a copy of BooksModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BooksModelCopyWith<BooksModel> get copyWith => _$BooksModelCopyWithImpl<BooksModel>(this as BooksModel, _$identity);

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
abstract mixin class $BooksModelCopyWith<$Res>  {
  factory $BooksModelCopyWith(BooksModel value, $Res Function(BooksModel) _then) = _$BooksModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'count') int? count,@JsonKey(name: 'next') String? next,@JsonKey(name: 'results') List<ResultModel>? results
});




}
/// @nodoc
class _$BooksModelCopyWithImpl<$Res>
    implements $BooksModelCopyWith<$Res> {
  _$BooksModelCopyWithImpl(this._self, this._then);

  final BooksModel _self;
  final $Res Function(BooksModel) _then;

/// Create a copy of BooksModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = freezed,Object? next = freezed,Object? results = freezed,}) {
  return _then(_self.copyWith(
count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<ResultModel>?,
  ));
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


/// Create a copy of BooksModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BooksModelCopyWith<_BooksModel> get copyWith => __$BooksModelCopyWithImpl<_BooksModel>(this, _$identity);

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
abstract mixin class _$BooksModelCopyWith<$Res> implements $BooksModelCopyWith<$Res> {
  factory _$BooksModelCopyWith(_BooksModel value, $Res Function(_BooksModel) _then) = __$BooksModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'count') int? count,@JsonKey(name: 'next') String? next,@JsonKey(name: 'results') List<ResultModel>? results
});




}
/// @nodoc
class __$BooksModelCopyWithImpl<$Res>
    implements _$BooksModelCopyWith<$Res> {
  __$BooksModelCopyWithImpl(this._self, this._then);

  final _BooksModel _self;
  final $Res Function(_BooksModel) _then;

/// Create a copy of BooksModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = freezed,Object? next = freezed,Object? results = freezed,}) {
  return _then(_BooksModel(
count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,results: freezed == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<ResultModel>?,
  ));
}


}


/// @nodoc
mixin _$ResultModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'title') String? get title;@JsonKey(name: 'authors') List<AuthorModel>? get authors;@JsonKey(name: 'summaries') List<String>? get summaries;@JsonKey(name: 'formats') FormatsModel? get formats;
/// Create a copy of ResultModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultModelCopyWith<ResultModel> get copyWith => _$ResultModelCopyWithImpl<ResultModel>(this as ResultModel, _$identity);

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
abstract mixin class $ResultModelCopyWith<$Res>  {
  factory $ResultModelCopyWith(ResultModel value, $Res Function(ResultModel) _then) = _$ResultModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'title') String? title,@JsonKey(name: 'authors') List<AuthorModel>? authors,@JsonKey(name: 'summaries') List<String>? summaries,@JsonKey(name: 'formats') FormatsModel? formats
});


$FormatsModelCopyWith<$Res>? get formats;

}
/// @nodoc
class _$ResultModelCopyWithImpl<$Res>
    implements $ResultModelCopyWith<$Res> {
  _$ResultModelCopyWithImpl(this._self, this._then);

  final ResultModel _self;
  final $Res Function(ResultModel) _then;

/// Create a copy of ResultModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? authors = freezed,Object? summaries = freezed,Object? formats = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,authors: freezed == authors ? _self.authors : authors // ignore: cast_nullable_to_non_nullable
as List<AuthorModel>?,summaries: freezed == summaries ? _self.summaries : summaries // ignore: cast_nullable_to_non_nullable
as List<String>?,formats: freezed == formats ? _self.formats : formats // ignore: cast_nullable_to_non_nullable
as FormatsModel?,
  ));
}
/// Create a copy of ResultModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormatsModelCopyWith<$Res>? get formats {
    if (_self.formats == null) {
    return null;
  }

  return $FormatsModelCopyWith<$Res>(_self.formats!, (value) {
    return _then(_self.copyWith(formats: value));
  });
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

/// Create a copy of ResultModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResultModelCopyWith<_ResultModel> get copyWith => __$ResultModelCopyWithImpl<_ResultModel>(this, _$identity);

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
abstract mixin class _$ResultModelCopyWith<$Res> implements $ResultModelCopyWith<$Res> {
  factory _$ResultModelCopyWith(_ResultModel value, $Res Function(_ResultModel) _then) = __$ResultModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'title') String? title,@JsonKey(name: 'authors') List<AuthorModel>? authors,@JsonKey(name: 'summaries') List<String>? summaries,@JsonKey(name: 'formats') FormatsModel? formats
});


@override $FormatsModelCopyWith<$Res>? get formats;

}
/// @nodoc
class __$ResultModelCopyWithImpl<$Res>
    implements _$ResultModelCopyWith<$Res> {
  __$ResultModelCopyWithImpl(this._self, this._then);

  final _ResultModel _self;
  final $Res Function(_ResultModel) _then;

/// Create a copy of ResultModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? authors = freezed,Object? summaries = freezed,Object? formats = freezed,}) {
  return _then(_ResultModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,authors: freezed == authors ? _self._authors : authors // ignore: cast_nullable_to_non_nullable
as List<AuthorModel>?,summaries: freezed == summaries ? _self._summaries : summaries // ignore: cast_nullable_to_non_nullable
as List<String>?,formats: freezed == formats ? _self.formats : formats // ignore: cast_nullable_to_non_nullable
as FormatsModel?,
  ));
}

/// Create a copy of ResultModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormatsModelCopyWith<$Res>? get formats {
    if (_self.formats == null) {
    return null;
  }

  return $FormatsModelCopyWith<$Res>(_self.formats!, (value) {
    return _then(_self.copyWith(formats: value));
  });
}
}


/// @nodoc
mixin _$AuthorModel {

@JsonKey(name: 'name') String? get name;
/// Create a copy of AuthorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorModelCopyWith<AuthorModel> get copyWith => _$AuthorModelCopyWithImpl<AuthorModel>(this as AuthorModel, _$identity);

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
abstract mixin class $AuthorModelCopyWith<$Res>  {
  factory $AuthorModelCopyWith(AuthorModel value, $Res Function(AuthorModel) _then) = _$AuthorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class _$AuthorModelCopyWithImpl<$Res>
    implements $AuthorModelCopyWith<$Res> {
  _$AuthorModelCopyWithImpl(this._self, this._then);

  final AuthorModel _self;
  final $Res Function(AuthorModel) _then;

/// Create a copy of AuthorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AuthorModel extends AuthorModel {
   _AuthorModel({@JsonKey(name: 'name') this.name}): super._();
  factory _AuthorModel.fromJson(Map<String, dynamic> json) => _$AuthorModelFromJson(json);

@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of AuthorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorModelCopyWith<_AuthorModel> get copyWith => __$AuthorModelCopyWithImpl<_AuthorModel>(this, _$identity);

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
abstract mixin class _$AuthorModelCopyWith<$Res> implements $AuthorModelCopyWith<$Res> {
  factory _$AuthorModelCopyWith(_AuthorModel value, $Res Function(_AuthorModel) _then) = __$AuthorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class __$AuthorModelCopyWithImpl<$Res>
    implements _$AuthorModelCopyWith<$Res> {
  __$AuthorModelCopyWithImpl(this._self, this._then);

  final _AuthorModel _self;
  final $Res Function(_AuthorModel) _then;

/// Create a copy of AuthorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(_AuthorModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FormatsModel {

@JsonKey(name: 'image/jpeg') String? get imageJpeg;
/// Create a copy of FormatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatsModelCopyWith<FormatsModel> get copyWith => _$FormatsModelCopyWithImpl<FormatsModel>(this as FormatsModel, _$identity);

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
abstract mixin class $FormatsModelCopyWith<$Res>  {
  factory $FormatsModelCopyWith(FormatsModel value, $Res Function(FormatsModel) _then) = _$FormatsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'image/jpeg') String? imageJpeg
});




}
/// @nodoc
class _$FormatsModelCopyWithImpl<$Res>
    implements $FormatsModelCopyWith<$Res> {
  _$FormatsModelCopyWithImpl(this._self, this._then);

  final FormatsModel _self;
  final $Res Function(FormatsModel) _then;

/// Create a copy of FormatsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageJpeg = freezed,}) {
  return _then(_self.copyWith(
imageJpeg: freezed == imageJpeg ? _self.imageJpeg : imageJpeg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _FormatsModel extends FormatsModel {
   _FormatsModel({@JsonKey(name: 'image/jpeg') this.imageJpeg}): super._();
  factory _FormatsModel.fromJson(Map<String, dynamic> json) => _$FormatsModelFromJson(json);

@override@JsonKey(name: 'image/jpeg') final  String? imageJpeg;

/// Create a copy of FormatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormatsModelCopyWith<_FormatsModel> get copyWith => __$FormatsModelCopyWithImpl<_FormatsModel>(this, _$identity);

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

/// @nodoc
abstract mixin class _$FormatsModelCopyWith<$Res> implements $FormatsModelCopyWith<$Res> {
  factory _$FormatsModelCopyWith(_FormatsModel value, $Res Function(_FormatsModel) _then) = __$FormatsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'image/jpeg') String? imageJpeg
});




}
/// @nodoc
class __$FormatsModelCopyWithImpl<$Res>
    implements _$FormatsModelCopyWith<$Res> {
  __$FormatsModelCopyWithImpl(this._self, this._then);

  final _FormatsModel _self;
  final $Res Function(_FormatsModel) _then;

/// Create a copy of FormatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageJpeg = freezed,}) {
  return _then(_FormatsModel(
imageJpeg: freezed == imageJpeg ? _self.imageJpeg : imageJpeg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
