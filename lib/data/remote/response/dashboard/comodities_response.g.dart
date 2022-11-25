// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comodities_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComoditiesResponse _$$_ComoditiesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ComoditiesResponse(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ComodityResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ComoditiesResponseToJson(
        _$_ComoditiesResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
