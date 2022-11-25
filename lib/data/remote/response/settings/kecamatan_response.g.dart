// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kecamatan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KecamatanResponse _$$_KecamatanResponseFromJson(Map<String, dynamic> json) =>
    _$_KecamatanResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_KecamatanResponseToJson(
        _$_KecamatanResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
