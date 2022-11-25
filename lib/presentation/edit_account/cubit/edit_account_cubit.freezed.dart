// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditAccountStateTearOff {
  const _$EditAccountStateTearOff();

  _EditAccountState call(
      {ResultState<UserProfile?> editAccountResultState =
          const ResultState.initial()}) {
    return _EditAccountState(
      editAccountResultState: editAccountResultState,
    );
  }
}

/// @nodoc
const $EditAccountState = _$EditAccountStateTearOff();

/// @nodoc
mixin _$EditAccountState {
  ResultState<UserProfile?> get editAccountResultState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditAccountStateCopyWith<EditAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditAccountStateCopyWith<$Res> {
  factory $EditAccountStateCopyWith(
          EditAccountState value, $Res Function(EditAccountState) then) =
      _$EditAccountStateCopyWithImpl<$Res>;
  $Res call({ResultState<UserProfile?> editAccountResultState});

  $ResultStateCopyWith<UserProfile?, $Res> get editAccountResultState;
}

/// @nodoc
class _$EditAccountStateCopyWithImpl<$Res>
    implements $EditAccountStateCopyWith<$Res> {
  _$EditAccountStateCopyWithImpl(this._value, this._then);

  final EditAccountState _value;
  // ignore: unused_field
  final $Res Function(EditAccountState) _then;

  @override
  $Res call({
    Object? editAccountResultState = freezed,
  }) {
    return _then(_value.copyWith(
      editAccountResultState: editAccountResultState == freezed
          ? _value.editAccountResultState
          : editAccountResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<UserProfile?>,
    ));
  }

  @override
  $ResultStateCopyWith<UserProfile?, $Res> get editAccountResultState {
    return $ResultStateCopyWith<UserProfile?, $Res>(
        _value.editAccountResultState, (value) {
      return _then(_value.copyWith(editAccountResultState: value));
    });
  }
}

/// @nodoc
abstract class _$EditAccountStateCopyWith<$Res>
    implements $EditAccountStateCopyWith<$Res> {
  factory _$EditAccountStateCopyWith(
          _EditAccountState value, $Res Function(_EditAccountState) then) =
      __$EditAccountStateCopyWithImpl<$Res>;
  @override
  $Res call({ResultState<UserProfile?> editAccountResultState});

  @override
  $ResultStateCopyWith<UserProfile?, $Res> get editAccountResultState;
}

/// @nodoc
class __$EditAccountStateCopyWithImpl<$Res>
    extends _$EditAccountStateCopyWithImpl<$Res>
    implements _$EditAccountStateCopyWith<$Res> {
  __$EditAccountStateCopyWithImpl(
      _EditAccountState _value, $Res Function(_EditAccountState) _then)
      : super(_value, (v) => _then(v as _EditAccountState));

  @override
  _EditAccountState get _value => super._value as _EditAccountState;

  @override
  $Res call({
    Object? editAccountResultState = freezed,
  }) {
    return _then(_EditAccountState(
      editAccountResultState: editAccountResultState == freezed
          ? _value.editAccountResultState
          : editAccountResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<UserProfile?>,
    ));
  }
}

/// @nodoc

class _$_EditAccountState implements _EditAccountState {
  const _$_EditAccountState(
      {this.editAccountResultState = const ResultState.initial()});

  @JsonKey()
  @override
  final ResultState<UserProfile?> editAccountResultState;

  @override
  String toString() {
    return 'EditAccountState(editAccountResultState: $editAccountResultState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditAccountState &&
            const DeepCollectionEquality()
                .equals(other.editAccountResultState, editAccountResultState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(editAccountResultState));

  @JsonKey(ignore: true)
  @override
  _$EditAccountStateCopyWith<_EditAccountState> get copyWith =>
      __$EditAccountStateCopyWithImpl<_EditAccountState>(this, _$identity);
}

abstract class _EditAccountState implements EditAccountState {
  const factory _EditAccountState(
      {ResultState<UserProfile?> editAccountResultState}) = _$_EditAccountState;

  @override
  ResultState<UserProfile?> get editAccountResultState;
  @override
  @JsonKey(ignore: true)
  _$EditAccountStateCopyWith<_EditAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
