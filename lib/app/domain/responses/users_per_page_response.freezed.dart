// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_per_page_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UsersPerPageTearOff {
  const _$UsersPerPageTearOff();

  _UsersPerPage call(
      {required int page,
      required int perPage,
      required int total,
      required int totalPages,
      required List<User> data}) {
    return _UsersPerPage(
      page: page,
      perPage: perPage,
      total: total,
      totalPages: totalPages,
      data: data,
    );
  }
}

/// @nodoc
const $UsersPerPage = _$UsersPerPageTearOff();

/// @nodoc
mixin _$UsersPerPage {
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<User> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersPerPageCopyWith<UsersPerPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersPerPageCopyWith<$Res> {
  factory $UsersPerPageCopyWith(
          UsersPerPage value, $Res Function(UsersPerPage) then) =
      _$UsersPerPageCopyWithImpl<$Res>;
  $Res call(
      {int page, int perPage, int total, int totalPages, List<User> data});
}

/// @nodoc
class _$UsersPerPageCopyWithImpl<$Res> implements $UsersPerPageCopyWith<$Res> {
  _$UsersPerPageCopyWithImpl(this._value, this._then);

  final UsersPerPage _value;
  // ignore: unused_field
  final $Res Function(UsersPerPage) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
abstract class _$UsersPerPageCopyWith<$Res>
    implements $UsersPerPageCopyWith<$Res> {
  factory _$UsersPerPageCopyWith(
          _UsersPerPage value, $Res Function(_UsersPerPage) then) =
      __$UsersPerPageCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page, int perPage, int total, int totalPages, List<User> data});
}

/// @nodoc
class __$UsersPerPageCopyWithImpl<$Res> extends _$UsersPerPageCopyWithImpl<$Res>
    implements _$UsersPerPageCopyWith<$Res> {
  __$UsersPerPageCopyWithImpl(
      _UsersPerPage _value, $Res Function(_UsersPerPage) _then)
      : super(_value, (v) => _then(v as _UsersPerPage));

  @override
  _UsersPerPage get _value => super._value as _UsersPerPage;

  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
  }) {
    return _then(_UsersPerPage(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$_UsersPerPage implements _UsersPerPage {
  _$_UsersPerPage(
      {required this.page,
      required this.perPage,
      required this.total,
      required this.totalPages,
      required this.data});

  @override
  final int page;
  @override
  final int perPage;
  @override
  final int total;
  @override
  final int totalPages;
  @override
  final List<User> data;

  @override
  String toString() {
    return 'UsersPerPage(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsersPerPage &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$UsersPerPageCopyWith<_UsersPerPage> get copyWith =>
      __$UsersPerPageCopyWithImpl<_UsersPerPage>(this, _$identity);
}

abstract class _UsersPerPage implements UsersPerPage {
  factory _UsersPerPage(
      {required int page,
      required int perPage,
      required int total,
      required int totalPages,
      required List<User> data}) = _$_UsersPerPage;

  @override
  int get page;
  @override
  int get perPage;
  @override
  int get total;
  @override
  int get totalPages;
  @override
  List<User> get data;
  @override
  @JsonKey(ignore: true)
  _$UsersPerPageCopyWith<_UsersPerPage> get copyWith =>
      throw _privateConstructorUsedError;
}
