// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delete_laporan_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteLaporanResponse _$DeleteLaporanResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteLaporanResponse.fromJson(json);
}

/// @nodoc
class _$DeleteLaporanResponseTearOff {
  const _$DeleteLaporanResponseTearOff();

  _DeleteLaporanResponse call({int? statusCode, String? message}) {
    return _DeleteLaporanResponse(
      statusCode: statusCode,
      message: message,
    );
  }

  DeleteLaporanResponse fromJson(Map<String, Object?> json) {
    return DeleteLaporanResponse.fromJson(json);
  }
}

/// @nodoc
const $DeleteLaporanResponse = _$DeleteLaporanResponseTearOff();

/// @nodoc
mixin _$DeleteLaporanResponse {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteLaporanResponseCopyWith<DeleteLaporanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteLaporanResponseCopyWith<$Res> {
  factory $DeleteLaporanResponseCopyWith(DeleteLaporanResponse value,
          $Res Function(DeleteLaporanResponse) then) =
      _$DeleteLaporanResponseCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message});
}

/// @nodoc
class _$DeleteLaporanResponseCopyWithImpl<$Res>
    implements $DeleteLaporanResponseCopyWith<$Res> {
  _$DeleteLaporanResponseCopyWithImpl(this._value, this._then);

  final DeleteLaporanResponse _value;
  // ignore: unused_field
  final $Res Function(DeleteLaporanResponse) _then;

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
abstract class _$DeleteLaporanResponseCopyWith<$Res>
    implements $DeleteLaporanResponseCopyWith<$Res> {
  factory _$DeleteLaporanResponseCopyWith(_DeleteLaporanResponse value,
          $Res Function(_DeleteLaporanResponse) then) =
      __$DeleteLaporanResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message});
}

/// @nodoc
class __$DeleteLaporanResponseCopyWithImpl<$Res>
    extends _$DeleteLaporanResponseCopyWithImpl<$Res>
    implements _$DeleteLaporanResponseCopyWith<$Res> {
  __$DeleteLaporanResponseCopyWithImpl(_DeleteLaporanResponse _value,
      $Res Function(_DeleteLaporanResponse) _then)
      : super(_value, (v) => _then(v as _DeleteLaporanResponse));

  @override
  _DeleteLaporanResponse get _value => super._value as _DeleteLaporanResponse;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_DeleteLaporanResponse(
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
class _$_DeleteLaporanResponse extends _DeleteLaporanResponse {
  const _$_DeleteLaporanResponse({this.statusCode, this.message}) : super._();

  factory _$_DeleteLaporanResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteLaporanResponseFromJson(json);

  @override
  final int? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'DeleteLaporanResponse(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteLaporanResponse &&
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
  _$DeleteLaporanResponseCopyWith<_DeleteLaporanResponse> get copyWith =>
      __$DeleteLaporanResponseCopyWithImpl<_DeleteLaporanResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteLaporanResponseToJson(this);
  }
}

abstract class _DeleteLaporanResponse extends DeleteLaporanResponse {
  const factory _DeleteLaporanResponse({int? statusCode, String? message}) =
      _$_DeleteLaporanResponse;
  const _DeleteLaporanResponse._() : super._();

  factory _DeleteLaporanResponse.fromJson(Map<String, dynamic> json) =
      _$_DeleteLaporanResponse.fromJson;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$DeleteLaporanResponseCopyWith<_DeleteLaporanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
