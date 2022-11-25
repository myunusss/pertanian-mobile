// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'village.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VillageTearOff {
  const _$VillageTearOff();

  _Village call(
      {required int? id,
      required String? name,
      int? kecamatanId,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _Village(
      id: id,
      name: name,
      kecamatanId: kecamatanId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $Village = _$VillageTearOff();

/// @nodoc
mixin _$Village {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get kecamatanId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VillageCopyWith<Village> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VillageCopyWith<$Res> {
  factory $VillageCopyWith(Village value, $Res Function(Village) then) =
      _$VillageCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      int? kecamatanId,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$VillageCopyWithImpl<$Res> implements $VillageCopyWith<$Res> {
  _$VillageCopyWithImpl(this._value, this._then);

  final Village _value;
  // ignore: unused_field
  final $Res Function(Village) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? kecamatanId = freezed,
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
      kecamatanId: kecamatanId == freezed
          ? _value.kecamatanId
          : kecamatanId // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$VillageCopyWith<$Res> implements $VillageCopyWith<$Res> {
  factory _$VillageCopyWith(_Village value, $Res Function(_Village) then) =
      __$VillageCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      int? kecamatanId,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$VillageCopyWithImpl<$Res> extends _$VillageCopyWithImpl<$Res>
    implements _$VillageCopyWith<$Res> {
  __$VillageCopyWithImpl(_Village _value, $Res Function(_Village) _then)
      : super(_value, (v) => _then(v as _Village));

  @override
  _Village get _value => super._value as _Village;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? kecamatanId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Village(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatanId: kecamatanId == freezed
          ? _value.kecamatanId
          : kecamatanId // ignore: cast_nullable_to_non_nullable
              as int?,
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

class _$_Village implements _Village {
  const _$_Village(
      {required this.id,
      required this.name,
      this.kecamatanId,
      this.createdAt,
      this.updatedAt});

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? kecamatanId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Village(id: $id, name: $name, kecamatanId: $kecamatanId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Village &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.kecamatanId, kecamatanId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(kecamatanId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$VillageCopyWith<_Village> get copyWith =>
      __$VillageCopyWithImpl<_Village>(this, _$identity);
}

abstract class _Village implements Village {
  const factory _Village(
      {required int? id,
      required String? name,
      int? kecamatanId,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_Village;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get kecamatanId;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$VillageCopyWith<_Village> get copyWith =>
      throw _privateConstructorUsedError;
}
