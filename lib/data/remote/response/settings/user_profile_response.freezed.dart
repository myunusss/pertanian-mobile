// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileResponse _$UserProfileResponseFromJson(Map<String, dynamic> json) {
  return _UserProfileResponse.fromJson(json);
}

/// @nodoc
class _$UserProfileResponseTearOff {
  const _$UserProfileResponseTearOff();

  _UserProfileResponse call(
      {int? statusCode, String? message, UserResponse? data}) {
    return _UserProfileResponse(
      statusCode: statusCode,
      message: message,
      data: data,
    );
  }

  UserProfileResponse fromJson(Map<String, Object?> json) {
    return UserProfileResponse.fromJson(json);
  }
}

/// @nodoc
const $UserProfileResponse = _$UserProfileResponseTearOff();

/// @nodoc
mixin _$UserProfileResponse {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileResponseCopyWith<UserProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileResponseCopyWith<$Res> {
  factory $UserProfileResponseCopyWith(
          UserProfileResponse value, $Res Function(UserProfileResponse) then) =
      _$UserProfileResponseCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message, UserResponse? data});

  $UserResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserProfileResponseCopyWithImpl<$Res>
    implements $UserProfileResponseCopyWith<$Res> {
  _$UserProfileResponseCopyWithImpl(this._value, this._then);

  final UserProfileResponse _value;
  // ignore: unused_field
  final $Res Function(UserProfileResponse) _then;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ));
  }

  @override
  $UserResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$UserProfileResponseCopyWith<$Res>
    implements $UserProfileResponseCopyWith<$Res> {
  factory _$UserProfileResponseCopyWith(_UserProfileResponse value,
          $Res Function(_UserProfileResponse) then) =
      __$UserProfileResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message, UserResponse? data});

  @override
  $UserResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$UserProfileResponseCopyWithImpl<$Res>
    extends _$UserProfileResponseCopyWithImpl<$Res>
    implements _$UserProfileResponseCopyWith<$Res> {
  __$UserProfileResponseCopyWithImpl(
      _UserProfileResponse _value, $Res Function(_UserProfileResponse) _then)
      : super(_value, (v) => _then(v as _UserProfileResponse));

  @override
  _UserProfileResponse get _value => super._value as _UserProfileResponse;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_UserProfileResponse(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfileResponse extends _UserProfileResponse {
  const _$_UserProfileResponse({this.statusCode, this.message, this.data})
      : super._();

  factory _$_UserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileResponseFromJson(json);

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final UserResponse? data;

  @override
  String toString() {
    return 'UserProfileResponse(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfileResponse &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$UserProfileResponseCopyWith<_UserProfileResponse> get copyWith =>
      __$UserProfileResponseCopyWithImpl<_UserProfileResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileResponseToJson(this);
  }
}

abstract class _UserProfileResponse extends UserProfileResponse {
  const factory _UserProfileResponse(
      {int? statusCode,
      String? message,
      UserResponse? data}) = _$_UserProfileResponse;
  const _UserProfileResponse._() : super._();

  factory _UserProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_UserProfileResponse.fromJson;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  UserResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$UserProfileResponseCopyWith<_UserProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
