// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'laporan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LaporanTearOff {
  const _$LaporanTearOff();

  _Laporan call(
      {required int? statusCode,
      required String? message,
      required LaporanData? data}) {
    return _Laporan(
      statusCode: statusCode,
      message: message,
      data: data,
    );
  }
}

/// @nodoc
const $Laporan = _$LaporanTearOff();

/// @nodoc
mixin _$Laporan {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  LaporanData? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LaporanCopyWith<Laporan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanCopyWith<$Res> {
  factory $LaporanCopyWith(Laporan value, $Res Function(Laporan) then) =
      _$LaporanCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message, LaporanData? data});

  $LaporanDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LaporanCopyWithImpl<$Res> implements $LaporanCopyWith<$Res> {
  _$LaporanCopyWithImpl(this._value, this._then);

  final Laporan _value;
  // ignore: unused_field
  final $Res Function(Laporan) _then;

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
              as LaporanData?,
    ));
  }

  @override
  $LaporanDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LaporanDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$LaporanCopyWith<$Res> implements $LaporanCopyWith<$Res> {
  factory _$LaporanCopyWith(_Laporan value, $Res Function(_Laporan) then) =
      __$LaporanCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message, LaporanData? data});

  @override
  $LaporanDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$LaporanCopyWithImpl<$Res> extends _$LaporanCopyWithImpl<$Res>
    implements _$LaporanCopyWith<$Res> {
  __$LaporanCopyWithImpl(_Laporan _value, $Res Function(_Laporan) _then)
      : super(_value, (v) => _then(v as _Laporan));

  @override
  _Laporan get _value => super._value as _Laporan;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_Laporan(
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
              as LaporanData?,
    ));
  }
}

/// @nodoc

class _$_Laporan implements _Laporan {
  const _$_Laporan(
      {required this.statusCode, required this.message, required this.data});

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final LaporanData? data;

  @override
  String toString() {
    return 'Laporan(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Laporan &&
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
  _$LaporanCopyWith<_Laporan> get copyWith =>
      __$LaporanCopyWithImpl<_Laporan>(this, _$identity);
}

abstract class _Laporan implements Laporan {
  const factory _Laporan(
      {required int? statusCode,
      required String? message,
      required LaporanData? data}) = _$_Laporan;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  LaporanData? get data;
  @override
  @JsonKey(ignore: true)
  _$LaporanCopyWith<_Laporan> get copyWith =>
      throw _privateConstructorUsedError;
}
