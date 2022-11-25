// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_kecamatan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListKecamatanTearOff {
  const _$ListKecamatanTearOff();

  _ListKecamatan call(
      {required int? statusCode,
      required String? message,
      required List<Kecamatan>? data}) {
    return _ListKecamatan(
      statusCode: statusCode,
      message: message,
      data: data,
    );
  }
}

/// @nodoc
const $ListKecamatan = _$ListKecamatanTearOff();

/// @nodoc
mixin _$ListKecamatan {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<Kecamatan>? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListKecamatanCopyWith<ListKecamatan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListKecamatanCopyWith<$Res> {
  factory $ListKecamatanCopyWith(
          ListKecamatan value, $Res Function(ListKecamatan) then) =
      _$ListKecamatanCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message, List<Kecamatan>? data});
}

/// @nodoc
class _$ListKecamatanCopyWithImpl<$Res>
    implements $ListKecamatanCopyWith<$Res> {
  _$ListKecamatanCopyWithImpl(this._value, this._then);

  final ListKecamatan _value;
  // ignore: unused_field
  final $Res Function(ListKecamatan) _then;

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
              as List<Kecamatan>?,
    ));
  }
}

/// @nodoc
abstract class _$ListKecamatanCopyWith<$Res>
    implements $ListKecamatanCopyWith<$Res> {
  factory _$ListKecamatanCopyWith(
          _ListKecamatan value, $Res Function(_ListKecamatan) then) =
      __$ListKecamatanCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message, List<Kecamatan>? data});
}

/// @nodoc
class __$ListKecamatanCopyWithImpl<$Res>
    extends _$ListKecamatanCopyWithImpl<$Res>
    implements _$ListKecamatanCopyWith<$Res> {
  __$ListKecamatanCopyWithImpl(
      _ListKecamatan _value, $Res Function(_ListKecamatan) _then)
      : super(_value, (v) => _then(v as _ListKecamatan));

  @override
  _ListKecamatan get _value => super._value as _ListKecamatan;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_ListKecamatan(
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
              as List<Kecamatan>?,
    ));
  }
}

/// @nodoc

class _$_ListKecamatan implements _ListKecamatan {
  const _$_ListKecamatan(
      {required this.statusCode, required this.message, required this.data});

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final List<Kecamatan>? data;

  @override
  String toString() {
    return 'ListKecamatan(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListKecamatan &&
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
  _$ListKecamatanCopyWith<_ListKecamatan> get copyWith =>
      __$ListKecamatanCopyWithImpl<_ListKecamatan>(this, _$identity);
}

abstract class _ListKecamatan implements ListKecamatan {
  const factory _ListKecamatan(
      {required int? statusCode,
      required String? message,
      required List<Kecamatan>? data}) = _$_ListKecamatan;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  List<Kecamatan>? get data;
  @override
  @JsonKey(ignore: true)
  _$ListKecamatanCopyWith<_ListKecamatan> get copyWith =>
      throw _privateConstructorUsedError;
}
