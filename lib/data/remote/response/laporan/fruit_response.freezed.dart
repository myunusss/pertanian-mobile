// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fruit_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FruitResponse _$FruitResponseFromJson(Map<String, dynamic> json) {
  return _FruitResponse.fromJson(json);
}

/// @nodoc
class _$FruitResponseTearOff {
  const _$FruitResponseTearOff();

  _FruitResponse call(
      {int? id,
      @JsonKey(name: 'desa_id') int? desaId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'comodity_id') int? comodityId,
      @JsonKey(name: 'luas_tanam') String? luasTanam,
      @JsonKey(name: 'tanam_hasil') String? tanamHasil,
      @JsonKey(name: 'jumlah_produksi') String? jumlahProduksi,
      String? provitas,
      @JsonKey(name: 'harga_produsen') String? hargaProdusen,
      @JsonKey(name: 'harga_grosir') String? hargaGrosir,
      @JsonKey(name: 'harga_eceran') String? hargaEceran,
      @JsonKey(name: 'is_verified') int? isVerified,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      ComodityResponse? comodity}) {
    return _FruitResponse(
      id: id,
      desaId: desaId,
      userId: userId,
      comodityId: comodityId,
      luasTanam: luasTanam,
      tanamHasil: tanamHasil,
      jumlahProduksi: jumlahProduksi,
      provitas: provitas,
      hargaProdusen: hargaProdusen,
      hargaGrosir: hargaGrosir,
      hargaEceran: hargaEceran,
      isVerified: isVerified,
      createdAt: createdAt,
      updatedAt: updatedAt,
      comodity: comodity,
    );
  }

  FruitResponse fromJson(Map<String, Object?> json) {
    return FruitResponse.fromJson(json);
  }
}

/// @nodoc
const $FruitResponse = _$FruitResponseTearOff();

/// @nodoc
mixin _$FruitResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'desa_id')
  int? get desaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'comodity_id')
  int? get comodityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'luas_tanam')
  String? get luasTanam => throw _privateConstructorUsedError;
  @JsonKey(name: 'tanam_hasil')
  String? get tanamHasil => throw _privateConstructorUsedError;
  @JsonKey(name: 'jumlah_produksi')
  String? get jumlahProduksi => throw _privateConstructorUsedError;
  String? get provitas => throw _privateConstructorUsedError;
  @JsonKey(name: 'harga_produsen')
  String? get hargaProdusen => throw _privateConstructorUsedError;
  @JsonKey(name: 'harga_grosir')
  String? get hargaGrosir => throw _privateConstructorUsedError;
  @JsonKey(name: 'harga_eceran')
  String? get hargaEceran => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_verified')
  int? get isVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  ComodityResponse? get comodity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FruitResponseCopyWith<FruitResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FruitResponseCopyWith<$Res> {
  factory $FruitResponseCopyWith(
          FruitResponse value, $Res Function(FruitResponse) then) =
      _$FruitResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'desa_id') int? desaId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'comodity_id') int? comodityId,
      @JsonKey(name: 'luas_tanam') String? luasTanam,
      @JsonKey(name: 'tanam_hasil') String? tanamHasil,
      @JsonKey(name: 'jumlah_produksi') String? jumlahProduksi,
      String? provitas,
      @JsonKey(name: 'harga_produsen') String? hargaProdusen,
      @JsonKey(name: 'harga_grosir') String? hargaGrosir,
      @JsonKey(name: 'harga_eceran') String? hargaEceran,
      @JsonKey(name: 'is_verified') int? isVerified,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      ComodityResponse? comodity});

  $ComodityResponseCopyWith<$Res>? get comodity;
}

/// @nodoc
class _$FruitResponseCopyWithImpl<$Res>
    implements $FruitResponseCopyWith<$Res> {
  _$FruitResponseCopyWithImpl(this._value, this._then);

  final FruitResponse _value;
  // ignore: unused_field
  final $Res Function(FruitResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? desaId = freezed,
    Object? userId = freezed,
    Object? comodityId = freezed,
    Object? luasTanam = freezed,
    Object? tanamHasil = freezed,
    Object? jumlahProduksi = freezed,
    Object? provitas = freezed,
    Object? hargaProdusen = freezed,
    Object? hargaGrosir = freezed,
    Object? hargaEceran = freezed,
    Object? isVerified = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? comodity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      desaId: desaId == freezed
          ? _value.desaId
          : desaId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      comodityId: comodityId == freezed
          ? _value.comodityId
          : comodityId // ignore: cast_nullable_to_non_nullable
              as int?,
      luasTanam: luasTanam == freezed
          ? _value.luasTanam
          : luasTanam // ignore: cast_nullable_to_non_nullable
              as String?,
      tanamHasil: tanamHasil == freezed
          ? _value.tanamHasil
          : tanamHasil // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahProduksi: jumlahProduksi == freezed
          ? _value.jumlahProduksi
          : jumlahProduksi // ignore: cast_nullable_to_non_nullable
              as String?,
      provitas: provitas == freezed
          ? _value.provitas
          : provitas // ignore: cast_nullable_to_non_nullable
              as String?,
      hargaProdusen: hargaProdusen == freezed
          ? _value.hargaProdusen
          : hargaProdusen // ignore: cast_nullable_to_non_nullable
              as String?,
      hargaGrosir: hargaGrosir == freezed
          ? _value.hargaGrosir
          : hargaGrosir // ignore: cast_nullable_to_non_nullable
              as String?,
      hargaEceran: hargaEceran == freezed
          ? _value.hargaEceran
          : hargaEceran // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
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
abstract class _$FruitResponseCopyWith<$Res>
    implements $FruitResponseCopyWith<$Res> {
  factory _$FruitResponseCopyWith(
          _FruitResponse value, $Res Function(_FruitResponse) then) =
      __$FruitResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'desa_id') int? desaId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'comodity_id') int? comodityId,
      @JsonKey(name: 'luas_tanam') String? luasTanam,
      @JsonKey(name: 'tanam_hasil') String? tanamHasil,
      @JsonKey(name: 'jumlah_produksi') String? jumlahProduksi,
      String? provitas,
      @JsonKey(name: 'harga_produsen') String? hargaProdusen,
      @JsonKey(name: 'harga_grosir') String? hargaGrosir,
      @JsonKey(name: 'harga_eceran') String? hargaEceran,
      @JsonKey(name: 'is_verified') int? isVerified,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      ComodityResponse? comodity});

  @override
  $ComodityResponseCopyWith<$Res>? get comodity;
}

/// @nodoc
class __$FruitResponseCopyWithImpl<$Res>
    extends _$FruitResponseCopyWithImpl<$Res>
    implements _$FruitResponseCopyWith<$Res> {
  __$FruitResponseCopyWithImpl(
      _FruitResponse _value, $Res Function(_FruitResponse) _then)
      : super(_value, (v) => _then(v as _FruitResponse));

  @override
  _FruitResponse get _value => super._value as _FruitResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? desaId = freezed,
    Object? userId = freezed,
    Object? comodityId = freezed,
    Object? luasTanam = freezed,
    Object? tanamHasil = freezed,
    Object? jumlahProduksi = freezed,
    Object? provitas = freezed,
    Object? hargaProdusen = freezed,
    Object? hargaGrosir = freezed,
    Object? hargaEceran = freezed,
    Object? isVerified = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? comodity = freezed,
  }) {
    return _then(_FruitResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      desaId: desaId == freezed
          ? _value.desaId
          : desaId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      comodityId: comodityId == freezed
          ? _value.comodityId
          : comodityId // ignore: cast_nullable_to_non_nullable
              as int?,
      luasTanam: luasTanam == freezed
          ? _value.luasTanam
          : luasTanam // ignore: cast_nullable_to_non_nullable
              as String?,
      tanamHasil: tanamHasil == freezed
          ? _value.tanamHasil
          : tanamHasil // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahProduksi: jumlahProduksi == freezed
          ? _value.jumlahProduksi
          : jumlahProduksi // ignore: cast_nullable_to_non_nullable
              as String?,
      provitas: provitas == freezed
          ? _value.provitas
          : provitas // ignore: cast_nullable_to_non_nullable
              as String?,
      hargaProdusen: hargaProdusen == freezed
          ? _value.hargaProdusen
          : hargaProdusen // ignore: cast_nullable_to_non_nullable
              as String?,
      hargaGrosir: hargaGrosir == freezed
          ? _value.hargaGrosir
          : hargaGrosir // ignore: cast_nullable_to_non_nullable
              as String?,
      hargaEceran: hargaEceran == freezed
          ? _value.hargaEceran
          : hargaEceran // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
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
class _$_FruitResponse extends _FruitResponse {
  const _$_FruitResponse(
      {this.id,
      @JsonKey(name: 'desa_id') this.desaId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'comodity_id') this.comodityId,
      @JsonKey(name: 'luas_tanam') this.luasTanam,
      @JsonKey(name: 'tanam_hasil') this.tanamHasil,
      @JsonKey(name: 'jumlah_produksi') this.jumlahProduksi,
      this.provitas,
      @JsonKey(name: 'harga_produsen') this.hargaProdusen,
      @JsonKey(name: 'harga_grosir') this.hargaGrosir,
      @JsonKey(name: 'harga_eceran') this.hargaEceran,
      @JsonKey(name: 'is_verified') this.isVerified,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.comodity})
      : super._();

  factory _$_FruitResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FruitResponseFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'desa_id')
  final int? desaId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'comodity_id')
  final int? comodityId;
  @override
  @JsonKey(name: 'luas_tanam')
  final String? luasTanam;
  @override
  @JsonKey(name: 'tanam_hasil')
  final String? tanamHasil;
  @override
  @JsonKey(name: 'jumlah_produksi')
  final String? jumlahProduksi;
  @override
  final String? provitas;
  @override
  @JsonKey(name: 'harga_produsen')
  final String? hargaProdusen;
  @override
  @JsonKey(name: 'harga_grosir')
  final String? hargaGrosir;
  @override
  @JsonKey(name: 'harga_eceran')
  final String? hargaEceran;
  @override
  @JsonKey(name: 'is_verified')
  final int? isVerified;
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
    return 'FruitResponse(id: $id, desaId: $desaId, userId: $userId, comodityId: $comodityId, luasTanam: $luasTanam, tanamHasil: $tanamHasil, jumlahProduksi: $jumlahProduksi, provitas: $provitas, hargaProdusen: $hargaProdusen, hargaGrosir: $hargaGrosir, hargaEceran: $hargaEceran, isVerified: $isVerified, createdAt: $createdAt, updatedAt: $updatedAt, comodity: $comodity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FruitResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.desaId, desaId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.comodityId, comodityId) &&
            const DeepCollectionEquality().equals(other.luasTanam, luasTanam) &&
            const DeepCollectionEquality()
                .equals(other.tanamHasil, tanamHasil) &&
            const DeepCollectionEquality()
                .equals(other.jumlahProduksi, jumlahProduksi) &&
            const DeepCollectionEquality().equals(other.provitas, provitas) &&
            const DeepCollectionEquality()
                .equals(other.hargaProdusen, hargaProdusen) &&
            const DeepCollectionEquality()
                .equals(other.hargaGrosir, hargaGrosir) &&
            const DeepCollectionEquality()
                .equals(other.hargaEceran, hargaEceran) &&
            const DeepCollectionEquality()
                .equals(other.isVerified, isVerified) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.comodity, comodity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(desaId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(comodityId),
      const DeepCollectionEquality().hash(luasTanam),
      const DeepCollectionEquality().hash(tanamHasil),
      const DeepCollectionEquality().hash(jumlahProduksi),
      const DeepCollectionEquality().hash(provitas),
      const DeepCollectionEquality().hash(hargaProdusen),
      const DeepCollectionEquality().hash(hargaGrosir),
      const DeepCollectionEquality().hash(hargaEceran),
      const DeepCollectionEquality().hash(isVerified),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(comodity));

  @JsonKey(ignore: true)
  @override
  _$FruitResponseCopyWith<_FruitResponse> get copyWith =>
      __$FruitResponseCopyWithImpl<_FruitResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FruitResponseToJson(this);
  }
}

abstract class _FruitResponse extends FruitResponse {
  const factory _FruitResponse(
      {int? id,
      @JsonKey(name: 'desa_id') int? desaId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'comodity_id') int? comodityId,
      @JsonKey(name: 'luas_tanam') String? luasTanam,
      @JsonKey(name: 'tanam_hasil') String? tanamHasil,
      @JsonKey(name: 'jumlah_produksi') String? jumlahProduksi,
      String? provitas,
      @JsonKey(name: 'harga_produsen') String? hargaProdusen,
      @JsonKey(name: 'harga_grosir') String? hargaGrosir,
      @JsonKey(name: 'harga_eceran') String? hargaEceran,
      @JsonKey(name: 'is_verified') int? isVerified,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      ComodityResponse? comodity}) = _$_FruitResponse;
  const _FruitResponse._() : super._();

  factory _FruitResponse.fromJson(Map<String, dynamic> json) =
      _$_FruitResponse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'desa_id')
  int? get desaId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'comodity_id')
  int? get comodityId;
  @override
  @JsonKey(name: 'luas_tanam')
  String? get luasTanam;
  @override
  @JsonKey(name: 'tanam_hasil')
  String? get tanamHasil;
  @override
  @JsonKey(name: 'jumlah_produksi')
  String? get jumlahProduksi;
  @override
  String? get provitas;
  @override
  @JsonKey(name: 'harga_produsen')
  String? get hargaProdusen;
  @override
  @JsonKey(name: 'harga_grosir')
  String? get hargaGrosir;
  @override
  @JsonKey(name: 'harga_eceran')
  String? get hargaEceran;
  @override
  @JsonKey(name: 'is_verified')
  int? get isVerified;
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
  _$FruitResponseCopyWith<_FruitResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
