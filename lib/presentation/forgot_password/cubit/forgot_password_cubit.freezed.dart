// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForgotPasswordStateTearOff {
  const _$ForgotPasswordStateTearOff();

  _ForgotPasswordState call(
      {ResultState<dynamic> sendEmailResultState = const ResultState.initial(),
      ResultState<dynamic> sendOTPResultState = const ResultState.initial(),
      ResultState<dynamic> sendResetPasswordResultState =
          const ResultState.initial(),
      required ResetPasswordSteps? resetStep,
      required String validOtp}) {
    return _ForgotPasswordState(
      sendEmailResultState: sendEmailResultState,
      sendOTPResultState: sendOTPResultState,
      sendResetPasswordResultState: sendResetPasswordResultState,
      resetStep: resetStep,
      validOtp: validOtp,
    );
  }
}

/// @nodoc
const $ForgotPasswordState = _$ForgotPasswordStateTearOff();

/// @nodoc
mixin _$ForgotPasswordState {
  ResultState<dynamic> get sendEmailResultState =>
      throw _privateConstructorUsedError;
  ResultState<dynamic> get sendOTPResultState =>
      throw _privateConstructorUsedError;
  ResultState<dynamic> get sendResetPasswordResultState =>
      throw _privateConstructorUsedError;
  ResetPasswordSteps? get resetStep => throw _privateConstructorUsedError;
  String get validOtp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res>;
  $Res call(
      {ResultState<dynamic> sendEmailResultState,
      ResultState<dynamic> sendOTPResultState,
      ResultState<dynamic> sendResetPasswordResultState,
      ResetPasswordSteps? resetStep,
      String validOtp});

  $ResultStateCopyWith<dynamic, $Res> get sendEmailResultState;
  $ResultStateCopyWith<dynamic, $Res> get sendOTPResultState;
  $ResultStateCopyWith<dynamic, $Res> get sendResetPasswordResultState;
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  final ForgotPasswordState _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordState) _then;

  @override
  $Res call({
    Object? sendEmailResultState = freezed,
    Object? sendOTPResultState = freezed,
    Object? sendResetPasswordResultState = freezed,
    Object? resetStep = freezed,
    Object? validOtp = freezed,
  }) {
    return _then(_value.copyWith(
      sendEmailResultState: sendEmailResultState == freezed
          ? _value.sendEmailResultState
          : sendEmailResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      sendOTPResultState: sendOTPResultState == freezed
          ? _value.sendOTPResultState
          : sendOTPResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      sendResetPasswordResultState: sendResetPasswordResultState == freezed
          ? _value.sendResetPasswordResultState
          : sendResetPasswordResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      resetStep: resetStep == freezed
          ? _value.resetStep
          : resetStep // ignore: cast_nullable_to_non_nullable
              as ResetPasswordSteps?,
      validOtp: validOtp == freezed
          ? _value.validOtp
          : validOtp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ResultStateCopyWith<dynamic, $Res> get sendEmailResultState {
    return $ResultStateCopyWith<dynamic, $Res>(_value.sendEmailResultState,
        (value) {
      return _then(_value.copyWith(sendEmailResultState: value));
    });
  }

  @override
  $ResultStateCopyWith<dynamic, $Res> get sendOTPResultState {
    return $ResultStateCopyWith<dynamic, $Res>(_value.sendOTPResultState,
        (value) {
      return _then(_value.copyWith(sendOTPResultState: value));
    });
  }

  @override
  $ResultStateCopyWith<dynamic, $Res> get sendResetPasswordResultState {
    return $ResultStateCopyWith<dynamic, $Res>(
        _value.sendResetPasswordResultState, (value) {
      return _then(_value.copyWith(sendResetPasswordResultState: value));
    });
  }
}

/// @nodoc
abstract class _$ForgotPasswordStateCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$ForgotPasswordStateCopyWith(_ForgotPasswordState value,
          $Res Function(_ForgotPasswordState) then) =
      __$ForgotPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ResultState<dynamic> sendEmailResultState,
      ResultState<dynamic> sendOTPResultState,
      ResultState<dynamic> sendResetPasswordResultState,
      ResetPasswordSteps? resetStep,
      String validOtp});

  @override
  $ResultStateCopyWith<dynamic, $Res> get sendEmailResultState;
  @override
  $ResultStateCopyWith<dynamic, $Res> get sendOTPResultState;
  @override
  $ResultStateCopyWith<dynamic, $Res> get sendResetPasswordResultState;
}

/// @nodoc
class __$ForgotPasswordStateCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res>
    implements _$ForgotPasswordStateCopyWith<$Res> {
  __$ForgotPasswordStateCopyWithImpl(
      _ForgotPasswordState _value, $Res Function(_ForgotPasswordState) _then)
      : super(_value, (v) => _then(v as _ForgotPasswordState));

  @override
  _ForgotPasswordState get _value => super._value as _ForgotPasswordState;

  @override
  $Res call({
    Object? sendEmailResultState = freezed,
    Object? sendOTPResultState = freezed,
    Object? sendResetPasswordResultState = freezed,
    Object? resetStep = freezed,
    Object? validOtp = freezed,
  }) {
    return _then(_ForgotPasswordState(
      sendEmailResultState: sendEmailResultState == freezed
          ? _value.sendEmailResultState
          : sendEmailResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      sendOTPResultState: sendOTPResultState == freezed
          ? _value.sendOTPResultState
          : sendOTPResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      sendResetPasswordResultState: sendResetPasswordResultState == freezed
          ? _value.sendResetPasswordResultState
          : sendResetPasswordResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      resetStep: resetStep == freezed
          ? _value.resetStep
          : resetStep // ignore: cast_nullable_to_non_nullable
              as ResetPasswordSteps?,
      validOtp: validOtp == freezed
          ? _value.validOtp
          : validOtp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordState implements _ForgotPasswordState {
  const _$_ForgotPasswordState(
      {this.sendEmailResultState = const ResultState.initial(),
      this.sendOTPResultState = const ResultState.initial(),
      this.sendResetPasswordResultState = const ResultState.initial(),
      required this.resetStep,
      required this.validOtp});

  @JsonKey()
  @override
  final ResultState<dynamic> sendEmailResultState;
  @JsonKey()
  @override
  final ResultState<dynamic> sendOTPResultState;
  @JsonKey()
  @override
  final ResultState<dynamic> sendResetPasswordResultState;
  @override
  final ResetPasswordSteps? resetStep;
  @override
  final String validOtp;

  @override
  String toString() {
    return 'ForgotPasswordState(sendEmailResultState: $sendEmailResultState, sendOTPResultState: $sendOTPResultState, sendResetPasswordResultState: $sendResetPasswordResultState, resetStep: $resetStep, validOtp: $validOtp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForgotPasswordState &&
            const DeepCollectionEquality()
                .equals(other.sendEmailResultState, sendEmailResultState) &&
            const DeepCollectionEquality()
                .equals(other.sendOTPResultState, sendOTPResultState) &&
            const DeepCollectionEquality().equals(
                other.sendResetPasswordResultState,
                sendResetPasswordResultState) &&
            const DeepCollectionEquality().equals(other.resetStep, resetStep) &&
            const DeepCollectionEquality().equals(other.validOtp, validOtp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sendEmailResultState),
      const DeepCollectionEquality().hash(sendOTPResultState),
      const DeepCollectionEquality().hash(sendResetPasswordResultState),
      const DeepCollectionEquality().hash(resetStep),
      const DeepCollectionEquality().hash(validOtp));

  @JsonKey(ignore: true)
  @override
  _$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith =>
      __$ForgotPasswordStateCopyWithImpl<_ForgotPasswordState>(
          this, _$identity);
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  const factory _ForgotPasswordState(
      {ResultState<dynamic> sendEmailResultState,
      ResultState<dynamic> sendOTPResultState,
      ResultState<dynamic> sendResetPasswordResultState,
      required ResetPasswordSteps? resetStep,
      required String validOtp}) = _$_ForgotPasswordState;

  @override
  ResultState<dynamic> get sendEmailResultState;
  @override
  ResultState<dynamic> get sendOTPResultState;
  @override
  ResultState<dynamic> get sendResetPasswordResultState;
  @override
  ResetPasswordSteps? get resetStep;
  @override
  String get validOtp;
  @override
  @JsonKey(ignore: true)
  _$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
