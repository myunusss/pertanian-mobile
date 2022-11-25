// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FruitResponse _$$_FruitResponseFromJson(Map<String, dynamic> json) =>
    _$_FruitResponse(
      id: json['id'] as int?,
      desaId: json['desa_id'] as int?,
      userId: json['user_id'] as int?,
      comodityId: json['comodity_id'] as int?,
      luasTanam: json['luas_tanam'] as String?,
      tanamHasil: json['tanam_hasil'] as String?,
      jumlahProduksi: json['jumlah_produksi'] as String?,
      provitas: json['provitas'] as String?,
      hargaProdusen: json['harga_produsen'] as String?,
      hargaGrosir: json['harga_grosir'] as String?,
      hargaEceran: json['harga_eceran'] as String?,
      isVerified: json['is_verified'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      comodity: json['comodity'] == null
          ? null
          : ComodityResponse.fromJson(json['comodity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FruitResponseToJson(_$_FruitResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'desa_id': instance.desaId,
      'user_id': instance.userId,
      'comodity_id': instance.comodityId,
      'luas_tanam': instance.luasTanam,
      'tanam_hasil': instance.tanamHasil,
      'jumlah_produksi': instance.jumlahProduksi,
      'provitas': instance.provitas,
      'harga_produsen': instance.hargaProdusen,
      'harga_grosir': instance.hargaGrosir,
      'harga_eceran': instance.hargaEceran,
      'is_verified': instance.isVerified,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'comodity': instance.comodity,
    };
