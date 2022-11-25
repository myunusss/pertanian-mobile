// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'saran_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SaranStateTearOff {
  const _$SaranStateTearOff();

  _SaranState call(
      {ResultState<String> postSaranResultState =
          const ResultState.initial()}) {
    return _SaranState(
      postSaranResultState: postSaranResultState,
    );
  }
}

/// @nodoc
const $SaranState = _$SaranStateTearOff();

/// @nodoc
mixin _$SaranState {
  ResultState<String> get postSaranResultState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaranStateCopyWith<SaranState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaranStateCopyWith<$Res> {
  factory $SaranStateCopyWith(
          SaranState value, $Res Function(SaranState) then) =
      _$SaranStateCopyWithImpl<$Res>;
  $Res call({ResultState<String> postSaranResultState});

  $ResultStateCopyWith<String, $Res> get postSaranResultState;
}

/// @nodoc
class _$SaranStateCopyWithImpl<$Res> implements $SaranStateCopyWith<$Res> {
  _$SaranStateCopyWithImpl(this._value, this._then);

  final SaranState _value;
  // ignore: unused_field
  final $Res Function(SaranState) _then;

  @override
  $Res call({
    Object? postSaranResultState = freezed,
  }) {
    return _then(_value.copyWith(
      postSaranResultState: postSaranResultState == freezed
          ? _value.postSaranResultState
          : postSaranResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<String>,
    ));
  }

  @override
  $ResultStateCopyWith<String, $Res> get postSaranResultState {
    return $ResultStateCopyWith<String, $Res>(_value.postSaranResultState,
        (value) {
      return _then(_value.copyWith(postSaranResultState: value));
    });
  }
}

/// @nodoc
abstract class _$SaranStateCopyWith<$Res> implements $SaranStateCopyWith<$Res> {
  factory _$SaranStateCopyWith(
          _SaranState value, $Res Function(_SaranState) then) =
      __$SaranStateCopyWithImpl<$Res>;
  @override
  $Res call({ResultState<String> postSaranResultState});

  @override
  $ResultStateCopyWith<String, $Res> get postSaranResultState;
}

/// @nodoc
class __$SaranStateCopyWithImpl<$Res> extends _$SaranStateCopyWithImpl<$Res>
    implements _$SaranStateCopyWith<$Res> {
  __$SaranStateCopyWithImpl(
      _SaranState _value, $Res Function(_SaranState) _then)
      : super(_value, (v) => _then(v as _SaranState));

  @override
  _SaranState get _value => super._value as _SaranState;

  @override
  $Res call({
    Object? postSaranResultState = freezed,
  }) {
    return _then(_SaranState(
      postSaranResultState: postSaranResultState == freezed
          ? _value.postSaranResultState
          : postSaranResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<String>,
    ));
  }
}

/// @nodoc

class _$_SaranState implements _SaranState {
  const _$_SaranState(
      {this.postSaranResultState = const ResultState.initial()});

  @JsonKey()
  @override
  final ResultState<String> postSaranResultState;

  @override
  String toString() {
    return 'SaranState(postSaranResultState: $postSaranResultState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaranState &&
            const DeepCollectionEquality()
                .equals(other.postSaranResultState, postSaranResultState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(postSaranResultState));

  @JsonKey(ignore: true)
  @override
  _$SaranStateCopyWith<_SaranState> get copyWith =>
      __$SaranStateCopyWithImpl<_SaranState>(this, _$identity);
}

abstract class _SaranState implements SaranState {
  const factory _SaranState({ResultState<String> postSaranResultState}) =
      _$_SaranState;

  @override
  ResultState<String> get postSaranResultState;
  @override
  @JsonKey(ignore: true)
  _$SaranStateCopyWith<_SaranState> get copyWith =>
      throw _privateConstructorUsedError;
}
