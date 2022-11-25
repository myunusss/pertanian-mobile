// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comodities_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComoditiesResponse _$ComoditiesResponseFromJson(Map<String, dynamic> json) {
  return _ComoditiesResponse.fromJson(json);
}

/// @nodoc
class _$ComoditiesResponseTearOff {
  const _$ComoditiesResponseTearOff();

  _ComoditiesResponse call(
      {int? statusCode, String? message, List<ComodityResponse>? data}) {
    return _ComoditiesResponse(
      statusCode: statusCode,
      message: message,
      data: data,
    );
  }

  ComoditiesResponse fromJson(Map<String, Object?> json) {
    return ComoditiesResponse.fromJson(json);
  }
}

/// @nodoc
const $ComoditiesResponse = _$ComoditiesResponseTearOff();

/// @nodoc
mixin _$ComoditiesResponse {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<ComodityResponse>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComoditiesResponseCopyWith<ComoditiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComoditiesResponseCopyWith<$Res> {
  factory $ComoditiesResponseCopyWith(
          ComoditiesResponse value, $Res Function(ComoditiesResponse) then) =
      _$ComoditiesResponseCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message, List<ComodityResponse>? data});
}

/// @nodoc
class _$ComoditiesResponseCopyWithImpl<$Res>
    implements $ComoditiesResponseCopyWith<$Res> {
  _$ComoditiesResponseCopyWithImpl(this._value, this._then);

  final ComoditiesResponse _value;
  // ignore: unused_field
  final $Res Function(ComoditiesResponse) _then;

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
              as List<ComodityResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ComoditiesResponseCopyWith<$Res>
    implements $ComoditiesResponseCopyWith<$Res> {
  factory _$ComoditiesResponseCopyWith(
          _ComoditiesResponse value, $Res Function(_ComoditiesResponse) then) =
      __$ComoditiesResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message, List<ComodityResponse>? data});
}

/// @nodoc
class __$ComoditiesResponseCopyWithImpl<$Res>
    extends _$ComoditiesResponseCopyWithImpl<$Res>
    implements _$ComoditiesResponseCopyWith<$Res> {
  __$ComoditiesResponseCopyWithImpl(
      _ComoditiesResponse _value, $Res Function(_ComoditiesResponse) _then)
      : super(_value, (v) => _then(v as _ComoditiesResponse));

  @override
  _ComoditiesResponse get _value => super._value as _ComoditiesResponse;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_ComoditiesResponse(
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
              as List<ComodityResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComoditiesResponse extends _ComoditiesResponse {
  const _$_ComoditiesResponse({this.statusCode, this.message, this.data})
      : super._();

  factory _$_ComoditiesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ComoditiesResponseFromJson(json);

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final List<ComodityResponse>? data;

  @override
  String toString() {
    return 'ComoditiesResponse(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ComoditiesResponse &&
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
  _$ComoditiesResponseCopyWith<_ComoditiesResponse> get copyWith =>
      __$ComoditiesResponseCopyWithImpl<_ComoditiesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComoditiesResponseToJson(this);
  }
}

abstract class _ComoditiesResponse extends ComoditiesResponse {
  const factory _ComoditiesResponse(
      {int? statusCode,
      String? message,
      List<ComodityResponse>? data}) = _$_ComoditiesResponse;
  const _ComoditiesResponse._() : super._();

  factory _ComoditiesResponse.fromJson(Map<String, dynamic> json) =
      _$_ComoditiesResponse.fromJson;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  List<ComodityResponse>? get data;
  @override
  @JsonKey(ignore: true)
  _$ComoditiesResponseCopyWith<_ComoditiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
