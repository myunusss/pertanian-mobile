// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'villages_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VillagesResponse _$$_VillagesResponseFromJson(Map<String, dynamic> json) =>
    _$_VillagesResponse(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => VillageResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VillagesResponseToJson(_$_VillagesResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
