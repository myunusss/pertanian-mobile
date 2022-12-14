// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required int? id,
      required String? name,
      required String? email,
      required String? emailVerifiedAt,
      required int? kecamatanId,
      required String? otp,
      required DateTime? createdAt,
      required DateTime? updatedAt,
      required Kecamatan? kecamatan}) {
    return _User(
      id: id,
      name: name,
      email: email,
      emailVerifiedAt: emailVerifiedAt,
      kecamatanId: kecamatanId,
      otp: otp,
      createdAt: createdAt,
      updatedAt: updatedAt,
      kecamatan: kecamatan,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  int? get kecamatanId => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Kecamatan? get kecamatan => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? emailVerifiedAt,
      int? kecamatanId,
      String? otp,
      DateTime? createdAt,
      DateTime? updatedAt,
      Kecamatan? kecamatan});

  $KecamatanCopyWith<$Res>? get kecamatan;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? kecamatanId = freezed,
    Object? otp = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? kecamatan = freezed,
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
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: emailVerifiedAt == freezed
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatanId: kecamatanId == freezed
          ? _value.kecamatanId
          : kecamatanId // ignore: cast_nullable_to_non_nullable
              as int?,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      kecamatan: kecamatan == freezed
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as Kecamatan?,
    ));
  }

  @override
  $KecamatanCopyWith<$Res>? get kecamatan {
    if (_value.kecamatan == null) {
      return null;
    }

    return $KecamatanCopyWith<$Res>(_value.kecamatan!, (value) {
      return _then(_value.copyWith(kecamatan: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? emailVerifiedAt,
      int? kecamatanId,
      String? otp,
      DateTime? createdAt,
      DateTime? updatedAt,
      Kecamatan? kecamatan});

  @override
  $KecamatanCopyWith<$Res>? get kecamatan;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? kecamatanId = freezed,
    Object? otp = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? kecamatan = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: emailVerifiedAt == freezed
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatanId: kecamatanId == freezed
          ? _value.kecamatanId
          : kecamatanId // ignore: cast_nullable_to_non_nullable
              as int?,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      kecamatan: kecamatan == freezed
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as Kecamatan?,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.name,
      required this.email,
      required this.emailVerifiedAt,
      required this.kecamatanId,
      required this.otp,
      required this.createdAt,
      required this.updatedAt,
      required this.kecamatan});

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? emailVerifiedAt;
  @override
  final int? kecamatanId;
  @override
  final String? otp;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final Kecamatan? kecamatan;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, emailVerifiedAt: $emailVerifiedAt, kecamatanId: $kecamatanId, otp: $otp, createdAt: $createdAt, updatedAt: $updatedAt, kecamatan: $kecamatan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.emailVerifiedAt, emailVerifiedAt) &&
            const DeepCollectionEquality()
                .equals(other.kecamatanId, kecamatanId) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.kecamatan, kecamatan));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(emailVerifiedAt),
      const DeepCollectionEquality().hash(kecamatanId),
      const DeepCollectionEquality().hash(otp),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(kecamatan));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required int? id,
      required String? name,
      required String? email,
      required String? emailVerifiedAt,
      required int? kecamatanId,
      required String? otp,
      required DateTime? createdAt,
      required DateTime? updatedAt,
      required Kecamatan? kecamatan}) = _$_User;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get emailVerifiedAt;
  @override
  int? get kecamatanId;
  @override
  String? get otp;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Kecamatan? get kecamatan;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
