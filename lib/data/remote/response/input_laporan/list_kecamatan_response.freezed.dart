// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_kecamatan_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListKecamatanResponse _$ListKecamatanResponseFromJson(
    Map<String, dynamic> json) {
  return _ListKecamatanResponse.fromJson(json);
}

/// @nodoc
class _$ListKecamatanResponseTearOff {
  const _$ListKecamatanResponseTearOff();

  _ListKecamatanResponse call(
      {int? statusCode, String? message, List<KecamatanResponse>? data}) {
    return _ListKecamatanResponse(
      statusCode: statusCode,
      message: message,
      data: data,
    );
  }

  ListKecamatanResponse fromJson(Map<String, Object?> json) {
    return ListKecamatanResponse.fromJson(json);
  }
}

/// @nodoc
const $ListKecamatanResponse = _$ListKecamatanResponseTearOff();

/// @nodoc
mixin _$ListKecamatanResponse {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<KecamatanResponse>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListKecamatanResponseCopyWith<ListKecamatanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListKecamatanResponseCopyWith<$Res> {
  factory $ListKecamatanResponseCopyWith(ListKecamatanResponse value,
          $Res Function(ListKecamatanResponse) then) =
      _$ListKecamatanResponseCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message, List<KecamatanResponse>? data});
}

/// @nodoc
class _$ListKecamatanResponseCopyWithImpl<$Res>
    implements $ListKecamatanResponseCopyWith<$Res> {
  _$ListKecamatanResponseCopyWithImpl(this._value, this._then);

  final ListKecamatanResponse _value;
  // ignore: unused_field
  final $Res Function(ListKecamatanResponse) _then;

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
              as List<KecamatanResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ListKecamatanResponseCopyWith<$Res>
    implements $ListKecamatanResponseCopyWith<$Res> {
  factory _$ListKecamatanResponseCopyWith(_ListKecamatanResponse value,
          $Res Function(_ListKecamatanResponse) then) =
      __$ListKecamatanResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message, List<KecamatanResponse>? data});
}

/// @nodoc
class __$ListKecamatanResponseCopyWithImpl<$Res>
    extends _$ListKecamatanResponseCopyWithImpl<$Res>
    implements _$ListKecamatanResponseCopyWith<$Res> {
  __$ListKecamatanResponseCopyWithImpl(_ListKecamatanResponse _value,
      $Res Function(_ListKecamatanResponse) _then)
      : super(_value, (v) => _then(v as _ListKecamatanResponse));

  @override
  _ListKecamatanResponse get _value => super._value as _ListKecamatanResponse;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_ListKecamatanResponse(
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
              as List<KecamatanResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListKecamatanResponse extends _ListKecamatanResponse {
  const _$_ListKecamatanResponse({this.statusCode, this.message, this.data})
      : super._();

  factory _$_ListKecamatanResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListKecamatanResponseFromJson(json);

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final List<KecamatanResponse>? data;

  @override
  String toString() {
    return 'ListKecamatanResponse(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListKecamatanResponse &&
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
  _$ListKecamatanResponseCopyWith<_ListKecamatanResponse> get copyWith =>
      __$ListKecamatanResponseCopyWithImpl<_ListKecamatanResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListKecamatanResponseToJson(this);
  }
}

abstract class _ListKecamatanResponse extends ListKecamatanResponse {
  const factory _ListKecamatanResponse(
      {int? statusCode,
      String? message,
      List<KecamatanResponse>? data}) = _$_ListKecamatanResponse;
  const _ListKecamatanResponse._() : super._();

  factory _ListKecamatanResponse.fromJson(Map<String, dynamic> json) =
      _$_ListKecamatanResponse.fromJson;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  List<KecamatanResponse>? get data;
  @override
  @JsonKey(ignore: true)
  _$ListKecamatanResponseCopyWith<_ListKecamatanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
