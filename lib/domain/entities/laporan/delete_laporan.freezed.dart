// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delete_laporan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeleteLaporanTearOff {
  const _$DeleteLaporanTearOff();

  _DeleteLaporan call({required int? statusCode, required String? message}) {
    return _DeleteLaporan(
      statusCode: statusCode,
      message: message,
    );
  }
}

/// @nodoc
const $DeleteLaporan = _$DeleteLaporanTearOff();

/// @nodoc
mixin _$DeleteLaporan {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteLaporanCopyWith<DeleteLaporan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteLaporanCopyWith<$Res> {
  factory $DeleteLaporanCopyWith(
          DeleteLaporan value, $Res Function(DeleteLaporan) then) =
      _$DeleteLaporanCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message});
}

/// @nodoc
class _$DeleteLaporanCopyWithImpl<$Res>
    implements $DeleteLaporanCopyWith<$Res> {
  _$DeleteLaporanCopyWithImpl(this._value, this._then);

  final DeleteLaporan _value;
  // ignore: unused_field
  final $Res Function(DeleteLaporan) _then;

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
abstract class _$DeleteLaporanCopyWith<$Res>
    implements $DeleteLaporanCopyWith<$Res> {
  factory _$DeleteLaporanCopyWith(
          _DeleteLaporan value, $Res Function(_DeleteLaporan) then) =
      __$DeleteLaporanCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message});
}

/// @nodoc
class __$DeleteLaporanCopyWithImpl<$Res>
    extends _$DeleteLaporanCopyWithImpl<$Res>
    implements _$DeleteLaporanCopyWith<$Res> {
  __$DeleteLaporanCopyWithImpl(
      _DeleteLaporan _value, $Res Function(_DeleteLaporan) _then)
      : super(_value, (v) => _then(v as _DeleteLaporan));

  @override
  _DeleteLaporan get _value => super._value as _DeleteLaporan;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_DeleteLaporan(
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

class _$_DeleteLaporan implements _DeleteLaporan {
  const _$_DeleteLaporan({required this.statusCode, required this.message});

  @override
  final int? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'DeleteLaporan(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteLaporan &&
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
  _$DeleteLaporanCopyWith<_DeleteLaporan> get copyWith =>
      __$DeleteLaporanCopyWithImpl<_DeleteLaporan>(this, _$identity);
}

abstract class _DeleteLaporan implements DeleteLaporan {
  const factory _DeleteLaporan(
      {required int? statusCode, required String? message}) = _$_DeleteLaporan;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$DeleteLaporanCopyWith<_DeleteLaporan> get copyWith =>
      throw _privateConstructorUsedError;
}
