// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _SettingsState call(
      {ResultState<User?> getUserProfileResultState =
          const ResultState.initial(),
      ResultState<dynamic> logoutResultState = const ResultState.initial(),
      User? user}) {
    return _SettingsState(
      getUserProfileResultState: getUserProfileResultState,
      logoutResultState: logoutResultState,
      user: user,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  ResultState<User?> get getUserProfileResultState =>
      throw _privateConstructorUsedError;
  ResultState<dynamic> get logoutResultState =>
      throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call(
      {ResultState<User?> getUserProfileResultState,
      ResultState<dynamic> logoutResultState,
      User? user});

  $ResultStateCopyWith<User?, $Res> get getUserProfileResultState;
  $ResultStateCopyWith<dynamic, $Res> get logoutResultState;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? getUserProfileResultState = freezed,
    Object? logoutResultState = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      getUserProfileResultState: getUserProfileResultState == freezed
          ? _value.getUserProfileResultState
          : getUserProfileResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<User?>,
      logoutResultState: logoutResultState == freezed
          ? _value.logoutResultState
          : logoutResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $ResultStateCopyWith<User?, $Res> get getUserProfileResultState {
    return $ResultStateCopyWith<User?, $Res>(_value.getUserProfileResultState,
        (value) {
      return _then(_value.copyWith(getUserProfileResultState: value));
    });
  }

  @override
  $ResultStateCopyWith<dynamic, $Res> get logoutResultState {
    return $ResultStateCopyWith<dynamic, $Res>(_value.logoutResultState,
        (value) {
      return _then(_value.copyWith(logoutResultState: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) then) =
      __$SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ResultState<User?> getUserProfileResultState,
      ResultState<dynamic> logoutResultState,
      User? user});

  @override
  $ResultStateCopyWith<User?, $Res> get getUserProfileResultState;
  @override
  $ResultStateCopyWith<dynamic, $Res> get logoutResultState;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(
      _SettingsState _value, $Res Function(_SettingsState) _then)
      : super(_value, (v) => _then(v as _SettingsState));

  @override
  _SettingsState get _value => super._value as _SettingsState;

  @override
  $Res call({
    Object? getUserProfileResultState = freezed,
    Object? logoutResultState = freezed,
    Object? user = freezed,
  }) {
    return _then(_SettingsState(
      getUserProfileResultState: getUserProfileResultState == freezed
          ? _value.getUserProfileResultState
          : getUserProfileResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<User?>,
      logoutResultState: logoutResultState == freezed
          ? _value.logoutResultState
          : logoutResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_SettingsState implements _SettingsState {
  const _$_SettingsState(
      {this.getUserProfileResultState = const ResultState.initial(),
      this.logoutResultState = const ResultState.initial(),
      this.user});

  @JsonKey()
  @override
  final ResultState<User?> getUserProfileResultState;
  @JsonKey()
  @override
  final ResultState<dynamic> logoutResultState;
  @override
  final User? user;

  @override
  String toString() {
    return 'SettingsState(getUserProfileResultState: $getUserProfileResultState, logoutResultState: $logoutResultState, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingsState &&
            const DeepCollectionEquality().equals(
                other.getUserProfileResultState, getUserProfileResultState) &&
            const DeepCollectionEquality()
                .equals(other.logoutResultState, logoutResultState) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(getUserProfileResultState),
      const DeepCollectionEquality().hash(logoutResultState),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {ResultState<User?> getUserProfileResultState,
      ResultState<dynamic> logoutResultState,
      User? user}) = _$_SettingsState;

  @override
  ResultState<User?> get getUserProfileResultState;
  @override
  ResultState<dynamic> get logoutResultState;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
