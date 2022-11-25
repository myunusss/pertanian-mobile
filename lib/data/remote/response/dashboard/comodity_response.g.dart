// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comodity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComodityResponse _$$_ComodityResponseFromJson(Map<String, dynamic> json) =>
    _$_ComodityResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_ComodityResponseToJson(_$_ComodityResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
