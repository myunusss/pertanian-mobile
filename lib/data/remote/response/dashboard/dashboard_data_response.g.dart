// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DashboardDataResponse _$$_DashboardDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DashboardDataResponse(
      region: json['region'] as String?,
      comodityId: json['comodityId'] as String?,
      komoditasId: json['komoditasId'] as String?,
      category: json['category'] as String?,
      type: json['type'] as String?,
      year: json['year'] as String?,
      wilayahArray: (json['wilayahArray'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sumKategoryPerWilayah: (json['sumKategoryPerWilayah'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      colorArray: (json['colorArray'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as int).toList())
          .toList(),
      arrKomoditas: (json['arrKomoditas'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      arrSumHargaProdusen: (json['arrSumHargaProdusen'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      arrSumHargaGrosir: (json['arrSumHargaGrosir'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      arrSumHargaEceran: (json['arrSumHargaEceran'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      colorBarArray: (json['colorBarArray'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as int).toList())
          .toList(),
    );

Map<String, dynamic> _$$_DashboardDataResponseToJson(
        _$_DashboardDataResponse instance) =>
    <String, dynamic>{
      'region': instance.region,
      'comodityId': instance.comodityId,
      'komoditasId': instance.komoditasId,
      'category': instance.category,
      'type': instance.type,
      'year': instance.year,
      'wilayahArray': instance.wilayahArray,
      'sumKategoryPerWilayah': instance.sumKategoryPerWilayah,
      'colorArray': instance.colorArray,
      'arrKomoditas': instance.arrKomoditas,
      'arrSumHargaProdusen': instance.arrSumHargaProdusen,
      'arrSumHargaGrosir': instance.arrSumHargaGrosir,
      'arrSumHargaEceran': instance.arrSumHargaEceran,
      'colorBarArray': instance.colorBarArray,
    };
