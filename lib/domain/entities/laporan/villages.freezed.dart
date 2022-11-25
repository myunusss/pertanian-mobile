// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'villages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VillagesTearOff {
  const _$VillagesTearOff();

  _Villages call(
      {required int? statusCode,
      required String? message,
      required List<Village>? data}) {
    return _Villages(
      statusCode: statusCode,
      message: message,
      data: data,
    );
  }
}

/// @nodoc
const $Villages = _$VillagesTearOff();

/// @nodoc
mixin _$Villages {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<Village>? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VillagesCopyWith<Villages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VillagesCopyWith<$Res> {
  factory $VillagesCopyWith(Villages value, $Res Function(Villages) then) =
      _$VillagesCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message, List<Village>? data});
}

/// @nodoc
class _$VillagesCopyWithImpl<$Res> implements $VillagesCopyWith<$Res> {
  _$VillagesCopyWithImpl(this._value, this._then);

  final Villages _value;
  // ignore: unused_field
  final $Res Function(Villages) _then;

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
              as List<Village>?,
    ));
  }
}

/// @nodoc
abstract class _$VillagesCopyWith<$Res> implements $VillagesCopyWith<$Res> {
  factory _$VillagesCopyWith(_Villages value, $Res Function(_Villages) then) =
      __$VillagesCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message, List<Village>? data});
}

/// @nodoc
class __$VillagesCopyWithImpl<$Res> extends _$VillagesCopyWithImpl<$Res>
    implements _$VillagesCopyWith<$Res> {
  __$VillagesCopyWithImpl(_Villages _value, $Res Function(_Villages) _then)
      : super(_value, (v) => _then(v as _Villages));

  @override
  _Villages get _value => super._value as _Villages;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_Villages(
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
              as List<Village>?,
    ));
  }
}

/// @nodoc

class _$_Villages implements _Villages {
  const _$_Villages(
      {required this.statusCode, required this.message, required this.data});

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final List<Village>? data;

  @override
  String toString() {
    return 'Villages(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Villages &&
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
  _$VillagesCopyWith<_Villages> get copyWith =>
      __$VillagesCopyWithImpl<_Villages>(this, _$identity);
}

abstract class _Villages implements Villages {
  const factory _Villages(
      {required int? statusCode,
      required String? message,
      required List<Village>? data}) = _$_Villages;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  List<Village>? get data;
  @override
  @JsonKey(ignore: true)
  _$VillagesCopyWith<_Villages> get copyWith =>
      throw _privateConstructorUsedError;
}
