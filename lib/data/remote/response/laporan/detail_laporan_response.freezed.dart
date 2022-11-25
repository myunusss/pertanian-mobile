// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detail_laporan_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailLaporanResponse _$DetailLaporanResponseFromJson(
    Map<String, dynamic> json) {
  return _DetailLaporanResponse.fromJson(json);
}

/// @nodoc
class _$DetailLaporanResponseTearOff {
  const _$DetailLaporanResponseTearOff();

  _DetailLaporanResponse call(
      {int? statusCode, String? message, FruitResponse? data}) {
    return _DetailLaporanResponse(
      statusCode: statusCode,
      message: message,
      data: data,
    );
  }

  DetailLaporanResponse fromJson(Map<String, Object?> json) {
    return DetailLaporanResponse.fromJson(json);
  }
}

/// @nodoc
const $DetailLaporanResponse = _$DetailLaporanResponseTearOff();

/// @nodoc
mixin _$DetailLaporanResponse {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  FruitResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailLaporanResponseCopyWith<DetailLaporanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailLaporanResponseCopyWith<$Res> {
  factory $DetailLaporanResponseCopyWith(DetailLaporanResponse value,
          $Res Function(DetailLaporanResponse) then) =
      _$DetailLaporanResponseCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message, FruitResponse? data});

  $FruitResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$DetailLaporanResponseCopyWithImpl<$Res>
    implements $DetailLaporanResponseCopyWith<$Res> {
  _$DetailLaporanResponseCopyWithImpl(this._value, this._then);

  final DetailLaporanResponse _value;
  // ignore: unused_field
  final $Res Function(DetailLaporanResponse) _then;

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
              as FruitResponse?,
    ));
  }

  @override
  $FruitResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FruitResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$DetailLaporanResponseCopyWith<$Res>
    implements $DetailLaporanResponseCopyWith<$Res> {
  factory _$DetailLaporanResponseCopyWith(_DetailLaporanResponse value,
          $Res Function(_DetailLaporanResponse) then) =
      __$DetailLaporanResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message, FruitResponse? data});

  @override
  $FruitResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$DetailLaporanResponseCopyWithImpl<$Res>
    extends _$DetailLaporanResponseCopyWithImpl<$Res>
    implements _$DetailLaporanResponseCopyWith<$Res> {
  __$DetailLaporanResponseCopyWithImpl(_DetailLaporanResponse _value,
      $Res Function(_DetailLaporanResponse) _then)
      : super(_value, (v) => _then(v as _DetailLaporanResponse));

  @override
  _DetailLaporanResponse get _value => super._value as _DetailLaporanResponse;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_DetailLaporanResponse(
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
              as FruitResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailLaporanResponse extends _DetailLaporanResponse {
  const _$_DetailLaporanResponse({this.statusCode, this.message, this.data})
      : super._();

  factory _$_DetailLaporanResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DetailLaporanResponseFromJson(json);

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final FruitResponse? data;

  @override
  String toString() {
    return 'DetailLaporanResponse(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailLaporanResponse &&
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
  _$DetailLaporanResponseCopyWith<_DetailLaporanResponse> get copyWith =>
      __$DetailLaporanResponseCopyWithImpl<_DetailLaporanResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailLaporanResponseToJson(this);
  }
}

abstract class _DetailLaporanResponse extends DetailLaporanResponse {
  const factory _DetailLaporanResponse(
      {int? statusCode,
      String? message,
      FruitResponse? data}) = _$_DetailLaporanResponse;
  const _DetailLaporanResponse._() : super._();

  factory _DetailLaporanResponse.fromJson(Map<String, dynamic> json) =
      _$_DetailLaporanResponse.fromJson;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  FruitResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$DetailLaporanResponseCopyWith<_DetailLaporanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
