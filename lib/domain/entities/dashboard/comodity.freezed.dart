// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comodity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ComodityTearOff {
  const _$ComodityTearOff();

  _Comodity call(
      {int? id,
      String? name,
      String? type,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _Comodity(
      id: id,
      name: name,
      type: type,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $Comodity = _$ComodityTearOff();

/// @nodoc
mixin _$Comodity {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComodityCopyWith<Comodity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComodityCopyWith<$Res> {
  factory $ComodityCopyWith(Comodity value, $Res Function(Comodity) then) =
      _$ComodityCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? type,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$ComodityCopyWithImpl<$Res> implements $ComodityCopyWith<$Res> {
  _$ComodityCopyWithImpl(this._value, this._then);

  final Comodity _value;
  // ignore: unused_field
  final $Res Function(Comodity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
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
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
abstract class _$ComodityCopyWith<$Res> implements $ComodityCopyWith<$Res> {
  factory _$ComodityCopyWith(_Comodity value, $Res Function(_Comodity) then) =
      __$ComodityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? type,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$ComodityCopyWithImpl<$Res> extends _$ComodityCopyWithImpl<$Res>
    implements _$ComodityCopyWith<$Res> {
  __$ComodityCopyWithImpl(_Comodity _value, $Res Function(_Comodity) _then)
      : super(_value, (v) => _then(v as _Comodity));

  @override
  _Comodity get _value => super._value as _Comodity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Comodity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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

class _$_Comodity implements _Comodity {
  const _$_Comodity(
      {this.id, this.name, this.type, this.createdAt, this.updatedAt});

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Comodity(id: $id, name: $name, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Comodity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$ComodityCopyWith<_Comodity> get copyWith =>
      __$ComodityCopyWithImpl<_Comodity>(this, _$identity);
}

abstract class _Comodity implements Comodity {
  const factory _Comodity(
      {int? id,
      String? name,
      String? type,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_Comodity;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$ComodityCopyWith<_Comodity> get copyWith =>
      throw _privateConstructorUsedError;
}
