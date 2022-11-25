// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kecamatan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$KecamatanTearOff {
  const _$KecamatanTearOff();

  _Kecamatan call(
      {required int? id,
      required String? name,
      required DateTime? createdAt,
      required DateTime? updatedAt}) {
    return _Kecamatan(
      id: id,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $Kecamatan = _$KecamatanTearOff();

/// @nodoc
mixin _$Kecamatan {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KecamatanCopyWith<Kecamatan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KecamatanCopyWith<$Res> {
  factory $KecamatanCopyWith(Kecamatan value, $Res Function(Kecamatan) then) =
      _$KecamatanCopyWithImpl<$Res>;
  $Res call({int? id, String? name, DateTime? createdAt, DateTime? updatedAt});
}

/// @nodoc
class _$KecamatanCopyWithImpl<$Res> implements $KecamatanCopyWith<$Res> {
  _$KecamatanCopyWithImpl(this._value, this._then);

  final Kecamatan _value;
  // ignore: unused_field
  final $Res Function(Kecamatan) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$KecamatanCopyWith<$Res> implements $KecamatanCopyWith<$Res> {
  factory _$KecamatanCopyWith(
          _Kecamatan value, $Res Function(_Kecamatan) then) =
      __$KecamatanCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, DateTime? createdAt, DateTime? updatedAt});
}

/// @nodoc
class __$KecamatanCopyWithImpl<$Res> extends _$KecamatanCopyWithImpl<$Res>
    implements _$KecamatanCopyWith<$Res> {
  __$KecamatanCopyWithImpl(_Kecamatan _value, $Res Function(_Kecamatan) _then)
      : super(_value, (v) => _then(v as _Kecamatan));

  @override
  _Kecamatan get _value => super._value as _Kecamatan;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Kecamatan(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Kecamatan implements _Kecamatan {
  const _$_Kecamatan(
      {required this.id,
      required this.name,
      required this.createdAt,
      required this.updatedAt});

  @override
  final int? id;
  @override
  final String? name;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Kecamatan(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Kecamatan &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$KecamatanCopyWith<_Kecamatan> get copyWith =>
      __$KecamatanCopyWithImpl<_Kecamatan>(this, _$identity);
}

abstract class _Kecamatan implements Kecamatan {
  const factory _Kecamatan(
      {required int? id,
      required String? name,
      required DateTime? createdAt,
      required DateTime? updatedAt}) = _$_Kecamatan;

  @override
  int? get id;
  @override
  String? get name;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$KecamatanCopyWith<_Kecamatan> get copyWith =>
      throw _privateConstructorUsedError;
}
