// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'village_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VillageResponse _$$_VillageResponseFromJson(Map<String, dynamic> json) =>
    _$_VillageResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      kecamatanId: json['kecamatan_id'] as int?,
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

Map<String, dynamic> _$$_VillageResponseToJson(_$_VillageResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kecamatan_id': instance.kecamatanId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'comodity': instance.comodity,
    };
