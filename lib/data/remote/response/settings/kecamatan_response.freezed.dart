// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kecamatan_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KecamatanResponse _$KecamatanResponseFromJson(Map<String, dynamic> json) {
  return _KecamatanResponse.fromJson(json);
}

/// @nodoc
class _$KecamatanResponseTearOff {
  const _$KecamatanResponseTearOff();

  _KecamatanResponse call(
      {required int? id,
      required String? name,
      @JsonKey(name: 'created_at') required DateTime? createdAt,
      @JsonKey(name: 'updated_at') required DateTime? updatedAt}) {
    return _KecamatanResponse(
      id: id,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  KecamatanResponse fromJson(Map<String, Object?> json) {
    return KecamatanResponse.fromJson(json);
  }
}

/// @nodoc
const $KecamatanResponse = _$KecamatanResponseTearOff();

/// @nodoc
mixin _$KecamatanResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KecamatanResponseCopyWith<KecamatanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KecamatanResponseCopyWith<$Res> {
  factory $KecamatanResponseCopyWith(
          KecamatanResponse value, $Res Function(KecamatanResponse) then) =
      _$KecamatanResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$KecamatanResponseCopyWithImpl<$Res>
    implements $KecamatanResponseCopyWith<$Res> {
  _$KecamatanResponseCopyWithImpl(this._value, this._then);

  final KecamatanResponse _value;
  // ignore: unused_field
  final $Res Function(KecamatanResponse) _then;

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
abstract class _$KecamatanResponseCopyWith<$Res>
    implements $KecamatanResponseCopyWith<$Res> {
  factory _$KecamatanResponseCopyWith(
          _KecamatanResponse value, $Res Function(_KecamatanResponse) then) =
      __$KecamatanResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$KecamatanResponseCopyWithImpl<$Res>
    extends _$KecamatanResponseCopyWithImpl<$Res>
    implements _$KecamatanResponseCopyWith<$Res> {
  __$KecamatanResponseCopyWithImpl(
      _KecamatanResponse _value, $Res Function(_KecamatanResponse) _then)
      : super(_value, (v) => _then(v as _KecamatanResponse));

  @override
  _KecamatanResponse get _value => super._value as _KecamatanResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_KecamatanResponse(
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
@JsonSerializable()
class _$_KecamatanResponse extends _KecamatanResponse {
  const _$_KecamatanResponse(
      {required this.id,
      required this.name,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : super._();

  factory _$_KecamatanResponse.fromJson(Map<String, dynamic> json) =>
      _$$_KecamatanResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'KecamatanResponse(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KecamatanResponse &&
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
  _$KecamatanResponseCopyWith<_KecamatanResponse> get copyWith =>
      __$KecamatanResponseCopyWithImpl<_KecamatanResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KecamatanResponseToJson(this);
  }
}

abstract class _KecamatanResponse extends KecamatanResponse {
  const factory _KecamatanResponse(
          {required int? id,
          required String? name,
          @JsonKey(name: 'created_at') required DateTime? createdAt,
          @JsonKey(name: 'updated_at') required DateTime? updatedAt}) =
      _$_KecamatanResponse;
  const _KecamatanResponse._() : super._();

  factory _KecamatanResponse.fromJson(Map<String, dynamic> json) =
      _$_KecamatanResponse.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$KecamatanResponseCopyWith<_KecamatanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
