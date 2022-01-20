// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {bool initialized = false,
      bool fetching = false,
      int page = 0,
      int totalPages = 0,
      List<User>? users}) {
    return _HomeState(
      initialized: initialized,
      fetching: fetching,
      page: page,
      totalPages: totalPages,
      users: users,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  bool get initialized => throw _privateConstructorUsedError;
  bool get fetching => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<User>? get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {bool initialized,
      bool fetching,
      int page,
      int totalPages,
      List<User>? users});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? initialized = freezed,
    Object? fetching = freezed,
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      initialized: initialized == freezed
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      fetching: fetching == freezed
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool initialized,
      bool fetching,
      int page,
      int totalPages,
      List<User>? users});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? initialized = freezed,
    Object? fetching = freezed,
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? users = freezed,
  }) {
    return _then(_HomeState(
      initialized: initialized == freezed
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      fetching: fetching == freezed
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc

class _$_HomeState extends _HomeState {
  const _$_HomeState(
      {this.initialized = false,
      this.fetching = false,
      this.page = 0,
      this.totalPages = 0,
      this.users})
      : super._();

  @JsonKey()
  @override
  final bool initialized;
  @JsonKey()
  @override
  final bool fetching;
  @JsonKey()
  @override
  final int page;
  @JsonKey()
  @override
  final int totalPages;
  @override
  final List<User>? users;

  @override
  String toString() {
    return 'HomeState(initialized: $initialized, fetching: $fetching, page: $page, totalPages: $totalPages, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality()
                .equals(other.initialized, initialized) &&
            const DeepCollectionEquality().equals(other.fetching, fetching) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialized),
      const DeepCollectionEquality().hash(fetching),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(users));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {bool initialized,
      bool fetching,
      int page,
      int totalPages,
      List<User>? users}) = _$_HomeState;
  const _HomeState._() : super._();

  @override
  bool get initialized;
  @override
  bool get fetching;
  @override
  int get page;
  @override
  int get totalPages;
  @override
  List<User>? get users;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
