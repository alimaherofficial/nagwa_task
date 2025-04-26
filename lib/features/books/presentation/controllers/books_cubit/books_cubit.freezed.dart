// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BooksState implements DiagnosticableTreeMixin {

 TextEditingController get searchController; ScrollController get scrollController; BooksStateStatus get status; BooksEntity? get books; int? get page; String? get errorMessage;
/// Create a copy of BooksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BooksStateCopyWith<BooksState> get copyWith => _$BooksStateCopyWithImpl<BooksState>(this as BooksState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BooksState'))
    ..add(DiagnosticsProperty('searchController', searchController))..add(DiagnosticsProperty('scrollController', scrollController))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('books', books))..add(DiagnosticsProperty('page', page))..add(DiagnosticsProperty('errorMessage', errorMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BooksState&&(identical(other.searchController, searchController) || other.searchController == searchController)&&(identical(other.scrollController, scrollController) || other.scrollController == scrollController)&&(identical(other.status, status) || other.status == status)&&(identical(other.books, books) || other.books == books)&&(identical(other.page, page) || other.page == page)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,searchController,scrollController,status,books,page,errorMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BooksState(searchController: $searchController, scrollController: $scrollController, status: $status, books: $books, page: $page, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $BooksStateCopyWith<$Res>  {
  factory $BooksStateCopyWith(BooksState value, $Res Function(BooksState) _then) = _$BooksStateCopyWithImpl;
@useResult
$Res call({
 TextEditingController searchController, ScrollController scrollController, BooksStateStatus status, BooksEntity? books, int? page, String? errorMessage
});




}
/// @nodoc
class _$BooksStateCopyWithImpl<$Res>
    implements $BooksStateCopyWith<$Res> {
  _$BooksStateCopyWithImpl(this._self, this._then);

  final BooksState _self;
  final $Res Function(BooksState) _then;

/// Create a copy of BooksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchController = null,Object? scrollController = null,Object? status = null,Object? books = freezed,Object? page = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
searchController: null == searchController ? _self.searchController : searchController // ignore: cast_nullable_to_non_nullable
as TextEditingController,scrollController: null == scrollController ? _self.scrollController : scrollController // ignore: cast_nullable_to_non_nullable
as ScrollController,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BooksStateStatus,books: freezed == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as BooksEntity?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _BooksState with DiagnosticableTreeMixin implements BooksState {
  const _BooksState({required this.searchController, required this.scrollController, this.status = BooksStateStatus.initial, this.books, this.page = 0, this.errorMessage});
  

@override final  TextEditingController searchController;
@override final  ScrollController scrollController;
@override@JsonKey() final  BooksStateStatus status;
@override final  BooksEntity? books;
@override@JsonKey() final  int? page;
@override final  String? errorMessage;

/// Create a copy of BooksState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BooksStateCopyWith<_BooksState> get copyWith => __$BooksStateCopyWithImpl<_BooksState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BooksState'))
    ..add(DiagnosticsProperty('searchController', searchController))..add(DiagnosticsProperty('scrollController', scrollController))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('books', books))..add(DiagnosticsProperty('page', page))..add(DiagnosticsProperty('errorMessage', errorMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BooksState&&(identical(other.searchController, searchController) || other.searchController == searchController)&&(identical(other.scrollController, scrollController) || other.scrollController == scrollController)&&(identical(other.status, status) || other.status == status)&&(identical(other.books, books) || other.books == books)&&(identical(other.page, page) || other.page == page)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,searchController,scrollController,status,books,page,errorMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BooksState(searchController: $searchController, scrollController: $scrollController, status: $status, books: $books, page: $page, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$BooksStateCopyWith<$Res> implements $BooksStateCopyWith<$Res> {
  factory _$BooksStateCopyWith(_BooksState value, $Res Function(_BooksState) _then) = __$BooksStateCopyWithImpl;
@override @useResult
$Res call({
 TextEditingController searchController, ScrollController scrollController, BooksStateStatus status, BooksEntity? books, int? page, String? errorMessage
});




}
/// @nodoc
class __$BooksStateCopyWithImpl<$Res>
    implements _$BooksStateCopyWith<$Res> {
  __$BooksStateCopyWithImpl(this._self, this._then);

  final _BooksState _self;
  final $Res Function(_BooksState) _then;

/// Create a copy of BooksState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchController = null,Object? scrollController = null,Object? status = null,Object? books = freezed,Object? page = freezed,Object? errorMessage = freezed,}) {
  return _then(_BooksState(
searchController: null == searchController ? _self.searchController : searchController // ignore: cast_nullable_to_non_nullable
as TextEditingController,scrollController: null == scrollController ? _self.scrollController : scrollController // ignore: cast_nullable_to_non_nullable
as ScrollController,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BooksStateStatus,books: freezed == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as BooksEntity?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
