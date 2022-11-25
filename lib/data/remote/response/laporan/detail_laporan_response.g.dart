// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_laporan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailLaporanResponse _$$_DetailLaporanResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DetailLaporanResponse(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : FruitResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DetailLaporanResponseToJson(
        _$_DetailLaporanResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
