// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laporan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LaporanResponse _$$_LaporanResponseFromJson(Map<String, dynamic> json) =>
    _$_LaporanResponse(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : LaporanDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LaporanResponseToJson(_$_LaporanResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
