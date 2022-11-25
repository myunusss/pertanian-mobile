// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_kecamatan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListKecamatanResponse _$$_ListKecamatanResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListKecamatanResponse(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => KecamatanResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListKecamatanResponseToJson(
        _$_ListKecamatanResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
