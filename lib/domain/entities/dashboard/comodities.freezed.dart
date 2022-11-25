// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comodities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ComoditiesTearOff {
  const _$ComoditiesTearOff();

  _Comodities call(
      {required int? statusCode,
      required String? message,
      required List<Comodity>? data}) {
    return _Comodities(
      statusCode: statusCode,
      message: message,
      data: data,
    );
  }
}

/// @nodoc
const $Comodities = _$ComoditiesTearOff();

/// @nodoc
mixin _$Comodities {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<Comodity>? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComoditiesCopyWith<Comodities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComoditiesCopyWith<$Res> {
  factory $ComoditiesCopyWith(
          Comodities value, $Res Function(Comodities) then) =
      _$ComoditiesCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message, List<Comodity>? data});
}

/// @nodoc
class _$ComoditiesCopyWithImpl<$Res> implements $ComoditiesCopyWith<$Res> {
  _$ComoditiesCopyWithImpl(this._value, this._then);

  final Comodities _value;
  // ignore: unused_field
  final $Res Function(Comodities) _then;

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
              as List<Comodity>?,
    ));
  }
}

/// @nodoc
abstract class _$ComoditiesCopyWith<$Res> implements $ComoditiesCopyWith<$Res> {
  factory _$ComoditiesCopyWith(
          _Comodities value, $Res Function(_Comodities) then) =
      __$ComoditiesCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message, List<Comodity>? data});
}

/// @nodoc
class __$ComoditiesCopyWithImpl<$Res> extends _$ComoditiesCopyWithImpl<$Res>
    implements _$ComoditiesCopyWith<$Res> {
  __$ComoditiesCopyWithImpl(
      _Comodities _value, $Res Function(_Comodities) _then)
      : super(_value, (v) => _then(v as _Comodities));

  @override
  _Comodities get _value => super._value as _Comodities;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_Comodities(
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
              as List<Comodity>?,
    ));
  }
}

/// @nodoc

class _$_Comodities implements _Comodities {
  const _$_Comodities(
      {required this.statusCode, required this.message, required this.data});

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final List<Comodity>? data;

  @override
  String toString() {
    return 'Comodities(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Comodities &&
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
  _$ComoditiesCopyWith<_Comodities> get copyWith =>
      __$ComoditiesCopyWithImpl<_Comodities>(this, _$identity);
}

abstract class _Comodities implements Comodities {
  const factory _Comodities(
      {required int? statusCode,
      required String? message,
      required List<Comodity>? data}) = _$_Comodities;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  List<Comodity>? get data;
  @override
  @JsonKey(ignore: true)
  _$ComoditiesCopyWith<_Comodities> get copyWith =>
      throw _privateConstructorUsedError;
}
