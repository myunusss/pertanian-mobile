// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'villages_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VillagesResponse _$VillagesResponseFromJson(Map<String, dynamic> json) {
  return _VillagesResponse.fromJson(json);
}

/// @nodoc
class _$VillagesResponseTearOff {
  const _$VillagesResponseTearOff();

  _VillagesResponse call(
      {int? statusCode, String? message, List<VillageResponse>? data}) {
    return _VillagesResponse(
      statusCode: statusCode,
      message: message,
      data: data,
    );
  }

  VillagesResponse fromJson(Map<String, Object?> json) {
    return VillagesResponse.fromJson(json);
  }
}

/// @nodoc
const $VillagesResponse = _$VillagesResponseTearOff();

/// @nodoc
mixin _$VillagesResponse {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<VillageResponse>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VillagesResponseCopyWith<VillagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VillagesResponseCopyWith<$Res> {
  factory $VillagesResponseCopyWith(
          VillagesResponse value, $Res Function(VillagesResponse) then) =
      _$VillagesResponseCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message, List<VillageResponse>? data});
}

/// @nodoc
class _$VillagesResponseCopyWithImpl<$Res>
    implements $VillagesResponseCopyWith<$Res> {
  _$VillagesResponseCopyWithImpl(this._value, this._then);

  final VillagesResponse _value;
  // ignore: unused_field
  final $Res Function(VillagesResponse) _then;

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
              as List<VillageResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$VillagesResponseCopyWith<$Res>
    implements $VillagesResponseCopyWith<$Res> {
  factory _$VillagesResponseCopyWith(
          _VillagesResponse value, $Res Function(_VillagesResponse) then) =
      __$VillagesResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message, List<VillageResponse>? data});
}

/// @nodoc
class __$VillagesResponseCopyWithImpl<$Res>
    extends _$VillagesResponseCopyWithImpl<$Res>
    implements _$VillagesResponseCopyWith<$Res> {
  __$VillagesResponseCopyWithImpl(
      _VillagesResponse _value, $Res Function(_VillagesResponse) _then)
      : super(_value, (v) => _then(v as _VillagesResponse));

  @override
  _VillagesResponse get _value => super._value as _VillagesResponse;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_VillagesResponse(
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
              as List<VillageResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VillagesResponse extends _VillagesResponse {
  const _$_VillagesResponse({this.statusCode, this.message, this.data})
      : super._();

  factory _$_VillagesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VillagesResponseFromJson(json);

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final List<VillageResponse>? data;

  @override
  String toString() {
    return 'VillagesResponse(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VillagesResponse &&
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
  _$VillagesResponseCopyWith<_VillagesResponse> get copyWith =>
      __$VillagesResponseCopyWithImpl<_VillagesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VillagesResponseToJson(this);
  }
}

abstract class _VillagesResponse extends VillagesResponse {
  const factory _VillagesResponse(
      {int? statusCode,
      String? message,
      List<VillageResponse>? data}) = _$_VillagesResponse;
  const _VillagesResponse._() : super._();

  factory _VillagesResponse.fromJson(Map<String, dynamic> json) =
      _$_VillagesResponse.fromJson;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  List<VillageResponse>? get data;
  @override
  @JsonKey(ignore: true)
  _$VillagesResponseCopyWith<_VillagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
