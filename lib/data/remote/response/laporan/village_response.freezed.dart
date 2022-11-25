// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'village_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VillageResponse _$VillageResponseFromJson(Map<String, dynamic> json) {
  return _VillageResponse.fromJson(json);
}

/// @nodoc
class _$VillageResponseTearOff {
  const _$VillageResponseTearOff();

  _VillageResponse call(
      {int? id,
      String? name,
      @JsonKey(name: 'kecamatan_id') int? kecamatanId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      ComodityResponse? comodity}) {
    return _VillageResponse(
      id: id,
      name: name,
      kecamatanId: kecamatanId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      comodity: comodity,
    );
  }

  VillageResponse fromJson(Map<String, Object?> json) {
    return VillageResponse.fromJson(json);
  }
}

/// @nodoc
const $VillageResponse = _$VillageResponseTearOff();

/// @nodoc
mixin _$VillageResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'kecamatan_id')
  int? get kecamatanId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  ComodityResponse? get comodity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VillageResponseCopyWith<VillageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VillageResponseCopyWith<$Res> {
  factory $VillageResponseCopyWith(
          VillageResponse value, $Res Function(VillageResponse) then) =
      _$VillageResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'kecamatan_id') int? kecamatanId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      ComodityResponse? comodity});

  $ComodityResponseCopyWith<$Res>? get comodity;
}

/// @nodoc
class _$VillageResponseCopyWithImpl<$Res>
    implements $VillageResponseCopyWith<$Res> {
  _$VillageResponseCopyWithImpl(this._value, this._then);

  final VillageResponse _value;
  // ignore: unused_field
  final $Res Function(VillageResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? kecamatanId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? comodity = freezed,
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
      comodity: comodity == freezed
          ? _value.comodity
          : comodity // ignore: cast_nullable_to_non_nullable
              as ComodityResponse?,
    ));
  }

  @override
  $ComodityResponseCopyWith<$Res>? get comodity {
    if (_value.comodity == null) {
      return null;
    }

    return $ComodityResponseCopyWith<$Res>(_value.comodity!, (value) {
      return _then(_value.copyWith(comodity: value));
    });
  }
}

/// @nodoc
abstract class _$VillageResponseCopyWith<$Res>
    implements $VillageResponseCopyWith<$Res> {
  factory _$VillageResponseCopyWith(
          _VillageResponse value, $Res Function(_VillageResponse) then) =
      __$VillageResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'kecamatan_id') int? kecamatanId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      ComodityResponse? comodity});

  @override
  $ComodityResponseCopyWith<$Res>? get comodity;
}

/// @nodoc
class __$VillageResponseCopyWithImpl<$Res>
    extends _$VillageResponseCopyWithImpl<$Res>
    implements _$VillageResponseCopyWith<$Res> {
  __$VillageResponseCopyWithImpl(
      _VillageResponse _value, $Res Function(_VillageResponse) _then)
      : super(_value, (v) => _then(v as _VillageResponse));

  @override
  _VillageResponse get _value => super._value as _VillageResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? kecamatanId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? comodity = freezed,
  }) {
    return _then(_VillageResponse(
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
      comodity: comodity == freezed
          ? _value.comodity
          : comodity // ignore: cast_nullable_to_non_nullable
              as ComodityResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VillageResponse extends _VillageResponse {
  const _$_VillageResponse(
      {this.id,
      this.name,
      @JsonKey(name: 'kecamatan_id') this.kecamatanId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.comodity})
      : super._();

  factory _$_VillageResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VillageResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'kecamatan_id')
  final int? kecamatanId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final ComodityResponse? comodity;

  @override
  String toString() {
    return 'VillageResponse(id: $id, name: $name, kecamatanId: $kecamatanId, createdAt: $createdAt, updatedAt: $updatedAt, comodity: $comodity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VillageResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.kecamatanId, kecamatanId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.comodity, comodity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(kecamatanId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(comodity));

  @JsonKey(ignore: true)
  @override
  _$VillageResponseCopyWith<_VillageResponse> get copyWith =>
      __$VillageResponseCopyWithImpl<_VillageResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VillageResponseToJson(this);
  }
}

abstract class _VillageResponse extends VillageResponse {
  const factory _VillageResponse(
      {int? id,
      String? name,
      @JsonKey(name: 'kecamatan_id') int? kecamatanId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      ComodityResponse? comodity}) = _$_VillageResponse;
  const _VillageResponse._() : super._();

  factory _VillageResponse.fromJson(Map<String, dynamic> json) =
      _$_VillageResponse.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'kecamatan_id')
  int? get kecamatanId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  ComodityResponse? get comodity;
  @override
  @JsonKey(ignore: true)
  _$VillageResponseCopyWith<_VillageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
