// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DashboardResponse _$DashboardResponseFromJson(Map<String, dynamic> json) {
  return _DashboardResponse.fromJson(json);
}

/// @nodoc
class _$DashboardResponseTearOff {
  const _$DashboardResponseTearOff();

  _DashboardResponse call(
      {int? statusCode, String? message, DashboardDataResponse? data}) {
    return _DashboardResponse(
      statusCode: statusCode,
      message: message,
      data: data,
    );
  }

  DashboardResponse fromJson(Map<String, Object?> json) {
    return DashboardResponse.fromJson(json);
  }
}

/// @nodoc
const $DashboardResponse = _$DashboardResponseTearOff();

/// @nodoc
mixin _$DashboardResponse {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  DashboardDataResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardResponseCopyWith<DashboardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardResponseCopyWith<$Res> {
  factory $DashboardResponseCopyWith(
          DashboardResponse value, $Res Function(DashboardResponse) then) =
      _$DashboardResponseCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message, DashboardDataResponse? data});

  $DashboardDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$DashboardResponseCopyWithImpl<$Res>
    implements $DashboardResponseCopyWith<$Res> {
  _$DashboardResponseCopyWithImpl(this._value, this._then);

  final DashboardResponse _value;
  // ignore: unused_field
  final $Res Function(DashboardResponse) _then;

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
              as DashboardDataResponse?,
    ));
  }

  @override
  $DashboardDataResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DashboardDataResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$DashboardResponseCopyWith<$Res>
    implements $DashboardResponseCopyWith<$Res> {
  factory _$DashboardResponseCopyWith(
          _DashboardResponse value, $Res Function(_DashboardResponse) then) =
      __$DashboardResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message, DashboardDataResponse? data});

  @override
  $DashboardDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$DashboardResponseCopyWithImpl<$Res>
    extends _$DashboardResponseCopyWithImpl<$Res>
    implements _$DashboardResponseCopyWith<$Res> {
  __$DashboardResponseCopyWithImpl(
      _DashboardResponse _value, $Res Function(_DashboardResponse) _then)
      : super(_value, (v) => _then(v as _DashboardResponse));

  @override
  _DashboardResponse get _value => super._value as _DashboardResponse;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_DashboardResponse(
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
              as DashboardDataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DashboardResponse extends _DashboardResponse {
  const _$_DashboardResponse({this.statusCode, this.message, this.data})
      : super._();

  factory _$_DashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DashboardResponseFromJson(json);

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final DashboardDataResponse? data;

  @override
  String toString() {
    return 'DashboardResponse(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DashboardResponse &&
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
  _$DashboardResponseCopyWith<_DashboardResponse> get copyWith =>
      __$DashboardResponseCopyWithImpl<_DashboardResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DashboardResponseToJson(this);
  }
}

abstract class _DashboardResponse extends DashboardResponse {
  const factory _DashboardResponse(
      {int? statusCode,
      String? message,
      DashboardDataResponse? data}) = _$_DashboardResponse;
  const _DashboardResponse._() : super._();

  factory _DashboardResponse.fromJson(Map<String, dynamic> json) =
      _$_DashboardResponse.fromJson;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  DashboardDataResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$DashboardResponseCopyWith<_DashboardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
