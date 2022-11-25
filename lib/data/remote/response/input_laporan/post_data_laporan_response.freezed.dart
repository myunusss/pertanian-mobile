// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_data_laporan_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostDataLaporanResponse _$PostDataLaporanResponseFromJson(
    Map<String, dynamic> json) {
  return _PostDataLaporanResponse.fromJson(json);
}

/// @nodoc
class _$PostDataLaporanResponseTearOff {
  const _$PostDataLaporanResponseTearOff();

  _PostDataLaporanResponse call({int? statusCode, String? message}) {
    return _PostDataLaporanResponse(
      statusCode: statusCode,
      message: message,
    );
  }

  PostDataLaporanResponse fromJson(Map<String, Object?> json) {
    return PostDataLaporanResponse.fromJson(json);
  }
}

/// @nodoc
const $PostDataLaporanResponse = _$PostDataLaporanResponseTearOff();

/// @nodoc
mixin _$PostDataLaporanResponse {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDataLaporanResponseCopyWith<PostDataLaporanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDataLaporanResponseCopyWith<$Res> {
  factory $PostDataLaporanResponseCopyWith(PostDataLaporanResponse value,
          $Res Function(PostDataLaporanResponse) then) =
      _$PostDataLaporanResponseCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message});
}

/// @nodoc
class _$PostDataLaporanResponseCopyWithImpl<$Res>
    implements $PostDataLaporanResponseCopyWith<$Res> {
  _$PostDataLaporanResponseCopyWithImpl(this._value, this._then);

  final PostDataLaporanResponse _value;
  // ignore: unused_field
  final $Res Function(PostDataLaporanResponse) _then;

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
abstract class _$PostDataLaporanResponseCopyWith<$Res>
    implements $PostDataLaporanResponseCopyWith<$Res> {
  factory _$PostDataLaporanResponseCopyWith(_PostDataLaporanResponse value,
          $Res Function(_PostDataLaporanResponse) then) =
      __$PostDataLaporanResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message});
}

/// @nodoc
class __$PostDataLaporanResponseCopyWithImpl<$Res>
    extends _$PostDataLaporanResponseCopyWithImpl<$Res>
    implements _$PostDataLaporanResponseCopyWith<$Res> {
  __$PostDataLaporanResponseCopyWithImpl(_PostDataLaporanResponse _value,
      $Res Function(_PostDataLaporanResponse) _then)
      : super(_value, (v) => _then(v as _PostDataLaporanResponse));

  @override
  _PostDataLaporanResponse get _value =>
      super._value as _PostDataLaporanResponse;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_PostDataLaporanResponse(
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
class _$_PostDataLaporanResponse extends _PostDataLaporanResponse {
  const _$_PostDataLaporanResponse({this.statusCode, this.message}) : super._();

  factory _$_PostDataLaporanResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PostDataLaporanResponseFromJson(json);

  @override
  final int? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'PostDataLaporanResponse(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostDataLaporanResponse &&
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
  _$PostDataLaporanResponseCopyWith<_PostDataLaporanResponse> get copyWith =>
      __$PostDataLaporanResponseCopyWithImpl<_PostDataLaporanResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostDataLaporanResponseToJson(this);
  }
}

abstract class _PostDataLaporanResponse extends PostDataLaporanResponse {
  const factory _PostDataLaporanResponse({int? statusCode, String? message}) =
      _$_PostDataLaporanResponse;
  const _PostDataLaporanResponse._() : super._();

  factory _PostDataLaporanResponse.fromJson(Map<String, dynamic> json) =
      _$_PostDataLaporanResponse.fromJson;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$PostDataLaporanResponseCopyWith<_PostDataLaporanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
