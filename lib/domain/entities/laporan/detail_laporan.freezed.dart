// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detail_laporan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DetailLaporanTearOff {
  const _$DetailLaporanTearOff();

  _DetailLaporan call(
      {required int? statusCode,
      required String? message,
      required Fruit? data}) {
    return _DetailLaporan(
      statusCode: statusCode,
      message: message,
      data: data,
    );
  }
}

/// @nodoc
const $DetailLaporan = _$DetailLaporanTearOff();

/// @nodoc
mixin _$DetailLaporan {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Fruit? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailLaporanCopyWith<DetailLaporan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailLaporanCopyWith<$Res> {
  factory $DetailLaporanCopyWith(
          DetailLaporan value, $Res Function(DetailLaporan) then) =
      _$DetailLaporanCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message, Fruit? data});

  $FruitCopyWith<$Res>? get data;
}

/// @nodoc
class _$DetailLaporanCopyWithImpl<$Res>
    implements $DetailLaporanCopyWith<$Res> {
  _$DetailLaporanCopyWithImpl(this._value, this._then);

  final DetailLaporan _value;
  // ignore: unused_field
  final $Res Function(DetailLaporan) _then;

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
              as Fruit?,
    ));
  }

  @override
  $FruitCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FruitCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$DetailLaporanCopyWith<$Res>
    implements $DetailLaporanCopyWith<$Res> {
  factory _$DetailLaporanCopyWith(
          _DetailLaporan value, $Res Function(_DetailLaporan) then) =
      __$DetailLaporanCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message, Fruit? data});

  @override
  $FruitCopyWith<$Res>? get data;
}

/// @nodoc
class __$DetailLaporanCopyWithImpl<$Res>
    extends _$DetailLaporanCopyWithImpl<$Res>
    implements _$DetailLaporanCopyWith<$Res> {
  __$DetailLaporanCopyWithImpl(
      _DetailLaporan _value, $Res Function(_DetailLaporan) _then)
      : super(_value, (v) => _then(v as _DetailLaporan));

  @override
  _DetailLaporan get _value => super._value as _DetailLaporan;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_DetailLaporan(
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
              as Fruit?,
    ));
  }
}

/// @nodoc

class _$_DetailLaporan implements _DetailLaporan {
  const _$_DetailLaporan(
      {required this.statusCode, required this.message, required this.data});

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final Fruit? data;

  @override
  String toString() {
    return 'DetailLaporan(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailLaporan &&
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
  _$DetailLaporanCopyWith<_DetailLaporan> get copyWith =>
      __$DetailLaporanCopyWithImpl<_DetailLaporan>(this, _$identity);
}

abstract class _DetailLaporan implements DetailLaporan {
  const factory _DetailLaporan(
      {required int? statusCode,
      required String? message,
      required Fruit? data}) = _$_DetailLaporan;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  Fruit? get data;
  @override
  @JsonKey(ignore: true)
  _$DetailLaporanCopyWith<_DetailLaporan> get copyWith =>
      throw _privateConstructorUsedError;
}
