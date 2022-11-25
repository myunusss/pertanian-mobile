// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_saran_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostSaranResponse _$PostSaranResponseFromJson(Map<String, dynamic> json) {
  return _PostSaranResponse.fromJson(json);
}

/// @nodoc
class _$PostSaranResponseTearOff {
  const _$PostSaranResponseTearOff();

  _PostSaranResponse call({int? statusCode, String? message}) {
    return _PostSaranResponse(
      statusCode: statusCode,
      message: message,
    );
  }

  PostSaranResponse fromJson(Map<String, Object?> json) {
    return PostSaranResponse.fromJson(json);
  }
}

/// @nodoc
const $PostSaranResponse = _$PostSaranResponseTearOff();

/// @nodoc
mixin _$PostSaranResponse {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostSaranResponseCopyWith<PostSaranResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostSaranResponseCopyWith<$Res> {
  factory $PostSaranResponseCopyWith(
          PostSaranResponse value, $Res Function(PostSaranResponse) then) =
      _$PostSaranResponseCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message});
}

/// @nodoc
class _$PostSaranResponseCopyWithImpl<$Res>
    implements $PostSaranResponseCopyWith<$Res> {
  _$PostSaranResponseCopyWithImpl(this._value, this._then);

  final PostSaranResponse _value;
  // ignore: unused_field
  final $Res Function(PostSaranResponse) _then;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$PostSaranResponseCopyWith<$Res>
    implements $PostSaranResponseCopyWith<$Res> {
  factory _$PostSaranResponseCopyWith(
          _PostSaranResponse value, $Res Function(_PostSaranResponse) then) =
      __$PostSaranResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message});
}

/// @nodoc
class __$PostSaranResponseCopyWithImpl<$Res>
    extends _$PostSaranResponseCopyWithImpl<$Res>
    implements _$PostSaranResponseCopyWith<$Res> {
  __$PostSaranResponseCopyWithImpl(
      _PostSaranResponse _value, $Res Function(_PostSaranResponse) _then)
      : super(_value, (v) => _then(v as _PostSaranResponse));

  @override
  _PostSaranResponse get _value => super._value as _PostSaranResponse;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_PostSaranResponse(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostSaranResponse extends _PostSaranResponse {
  const _$_PostSaranResponse({this.statusCode, this.message}) : super._();

  factory _$_PostSaranResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PostSaranResponseFromJson(json);

  @override
  final int? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'PostSaranResponse(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostSaranResponse &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$PostSaranResponseCopyWith<_PostSaranResponse> get copyWith =>
      __$PostSaranResponseCopyWithImpl<_PostSaranResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostSaranResponseToJson(this);
  }
}

abstract class _PostSaranResponse extends PostSaranResponse {
  const factory _PostSaranResponse({int? statusCode, String? message}) =
      _$_PostSaranResponse;
  const _PostSaranResponse._() : super._();

  factory _PostSaranResponse.fromJson(Map<String, dynamic> json) =
      _$_PostSaranResponse.fromJson;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$PostSaranResponseCopyWith<_PostSaranResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
