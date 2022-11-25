// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laporan_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LaporanDataResponse _$$_LaporanDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LaporanDataResponse(
      year: json['year'] as String?,
      fruits: (json['fruits'] as List<dynamic>?)
          ?.map((e) => FruitResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      vegetables: (json['vegetables'] as List<dynamic>?)
          ?.map((e) => FruitResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      biopharmaceuticals: (json['biopharmaceuticals'] as List<dynamic>?)
          ?.map((e) => FruitResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LaporanDataResponseToJson(
        _$_LaporanDataResponse instance) =>
    <String, dynamic>{
      'year': instance.year,
      'fruits': instance.fruits,
      'vegetables': instance.vegetables,
      'biopharmaceuticals': instance.biopharmaceuticals,
    };
