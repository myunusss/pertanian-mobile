// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'laporan_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaporanResponse _$LaporanResponseFromJson(Map<String, dynamic> json) {
  return _LaporanResponse.fromJson(json);
}

/// @nodoc
class _$LaporanResponseTearOff {
  const _$LaporanResponseTearOff();

  _LaporanResponse call(
      {int? statusCode, String? message, LaporanDataResponse? data}) {
    return _LaporanResponse(
      statusCode: statusCode,
      message: message,
      data: data,
    );
  }

  LaporanResponse fromJson(Map<String, Object?> json) {
    return LaporanResponse.fromJson(json);
  }
}

/// @nodoc
const $LaporanResponse = _$LaporanResponseTearOff();

/// @nodoc
mixin _$LaporanResponse {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  LaporanDataResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaporanResponseCopyWith<LaporanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanResponseCopyWith<$Res> {
  factory $LaporanResponseCopyWith(
          LaporanResponse value, $Res Function(LaporanResponse) then) =
      _$LaporanResponseCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message, LaporanDataResponse? data});

  $LaporanDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$LaporanResponseCopyWithImpl<$Res>
    implements $LaporanResponseCopyWith<$Res> {
  _$LaporanResponseCopyWithImpl(this._value, this._then);

  final LaporanResponse _value;
  // ignore: unused_field
  final $Res Function(LaporanResponse) _then;

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
              as LaporanDataResponse?,
    ));
  }

  @override
  $LaporanDataResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LaporanDataResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$LaporanResponseCopyWith<$Res>
    implements $LaporanResponseCopyWith<$Res> {
  factory _$LaporanResponseCopyWith(
          _LaporanResponse value, $Res Function(_LaporanResponse) then) =
      __$LaporanResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message, LaporanDataResponse? data});

  @override
  $LaporanDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$LaporanResponseCopyWithImpl<$Res>
    extends _$LaporanResponseCopyWithImpl<$Res>
    implements _$LaporanResponseCopyWith<$Res> {
  __$LaporanResponseCopyWithImpl(
      _LaporanResponse _value, $Res Function(_LaporanResponse) _then)
      : super(_value, (v) => _then(v as _LaporanResponse));

  @override
  _LaporanResponse get _value => super._value as _LaporanResponse;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_LaporanResponse(
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
              as LaporanDataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LaporanResponse extends _LaporanResponse {
  const _$_LaporanResponse({this.statusCode, this.message, this.data})
      : super._();

  factory _$_LaporanResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LaporanResponseFromJson(json);

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final LaporanDataResponse? data;

  @override
  String toString() {
    return 'LaporanResponse(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LaporanResponse &&
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
  _$LaporanResponseCopyWith<_LaporanResponse> get copyWith =>
      __$LaporanResponseCopyWithImpl<_LaporanResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LaporanResponseToJson(this);
  }
}

abstract class _LaporanResponse extends LaporanResponse {
  const factory _LaporanResponse(
      {int? statusCode,
      String? message,
      LaporanDataResponse? data}) = _$_LaporanResponse;
  const _LaporanResponse._() : super._();

  factory _LaporanResponse.fromJson(Map<String, dynamic> json) =
      _$_LaporanResponse.fromJson;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  LaporanDataResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$LaporanResponseCopyWith<_LaporanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
