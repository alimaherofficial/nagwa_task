// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookState implements DiagnosticableTreeMixin {

/// Whether the book is expanded
 bool get isExpanded;
/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookStateCopyWith<BookState> get copyWith => _$BookStateCopyWithImpl<BookState>(this as BookState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BookState'))
    ..add(DiagnosticsProperty('isExpanded', isExpanded));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookState&&(identical(other.isExpanded, isExpanded) || other.isExpanded == isExpanded));
}


@override
int get hashCode => Object.hash(runtimeType,isExpanded);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BookState(isExpanded: $isExpanded)';
}


}

/// @nodoc
abstract mixin class $BookStateCopyWith<$Res>  {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) _then) = _$BookStateCopyWithImpl;
@useResult
$Res call({
 bool isExpanded
});




}
/// @nodoc
class _$BookStateCopyWithImpl<$Res>
    implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._self, this._then);

  final BookState _self;
  final $Res Function(BookState) _then;

/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isExpanded = null,}) {
  return _then(_self.copyWith(
isExpanded: null == isExpanded ? _self.isExpanded : isExpanded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _BookState with DiagnosticableTreeMixin implements BookState {
  const _BookState({this.isExpanded = false});
  

/// Whether the book is expanded
@override@JsonKey() final  bool isExpanded;

/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookStateCopyWith<_BookState> get copyWith => __$BookStateCopyWithImpl<_BookState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BookState'))
    ..add(DiagnosticsProperty('isExpanded', isExpanded));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookState&&(identical(other.isExpanded, isExpanded) || other.isExpanded == isExpanded));
}


@override
int get hashCode => Object.hash(runtimeType,isExpanded);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BookState(isExpanded: $isExpanded)';
}


}

/// @nodoc
abstract mixin class _$BookStateCopyWith<$Res> implements $BookStateCopyWith<$Res> {
  factory _$BookStateCopyWith(_BookState value, $Res Function(_BookState) _then) = __$BookStateCopyWithImpl;
@override @useResult
$Res call({
 bool isExpanded
});




}
/// @nodoc
class __$BookStateCopyWithImpl<$Res>
    implements _$BookStateCopyWith<$Res> {
  __$BookStateCopyWithImpl(this._self, this._then);

  final _BookState _self;
  final $Res Function(_BookState) _then;

/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isExpanded = null,}) {
  return _then(_BookState(
isExpanded: null == isExpanded ? _self.isExpanded : isExpanded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
