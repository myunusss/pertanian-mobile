// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_data_laporan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostDataLaporanTearOff {
  const _$PostDataLaporanTearOff();

  _PostDataLaporan call({required int? statusCode, required String? message}) {
    return _PostDataLaporan(
      statusCode: statusCode,
      message: message,
    );
  }
}

/// @nodoc
const $PostDataLaporan = _$PostDataLaporanTearOff();

/// @nodoc
mixin _$PostDataLaporan {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostDataLaporanCopyWith<PostDataLaporan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDataLaporanCopyWith<$Res> {
  factory $PostDataLaporanCopyWith(
          PostDataLaporan value, $Res Function(PostDataLaporan) then) =
      _$PostDataLaporanCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message});
}

/// @nodoc
class _$PostDataLaporanCopyWithImpl<$Res>
    implements $PostDataLaporanCopyWith<$Res> {
  _$PostDataLaporanCopyWithImpl(this._value, this._then);

  final PostDataLaporan _value;
  // ignore: unused_field
  final $Res Function(PostDataLaporan) _then;

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
abstract class _$PostDataLaporanCopyWith<$Res>
    implements $PostDataLaporanCopyWith<$Res> {
  factory _$PostDataLaporanCopyWith(
          _PostDataLaporan value, $Res Function(_PostDataLaporan) then) =
      __$PostDataLaporanCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message});
}

/// @nodoc
class __$PostDataLaporanCopyWithImpl<$Res>
    extends _$PostDataLaporanCopyWithImpl<$Res>
    implements _$PostDataLaporanCopyWith<$Res> {
  __$PostDataLaporanCopyWithImpl(
      _PostDataLaporan _value, $Res Function(_PostDataLaporan) _then)
      : super(_value, (v) => _then(v as _PostDataLaporan));

  @override
  _PostDataLaporan get _value => super._value as _PostDataLaporan;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_PostDataLaporan(
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

class _$_PostDataLaporan implements _PostDataLaporan {
  const _$_PostDataLaporan({required this.statusCode, required this.message});

  @override
  final int? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'PostDataLaporan(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostDataLaporan &&
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
  _$PostDataLaporanCopyWith<_PostDataLaporan> get copyWith =>
      __$PostDataLaporanCopyWithImpl<_PostDataLaporan>(this, _$identity);
}

abstract class _PostDataLaporan implements PostDataLaporan {
  const factory _PostDataLaporan(
      {required int? statusCode,
      required String? message}) = _$_PostDataLaporan;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$PostDataLaporanCopyWith<_PostDataLaporan> get copyWith =>
      throw _privateConstructorUsedError;
}
