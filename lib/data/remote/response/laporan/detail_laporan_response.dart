import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/data/remote/response/laporan/fruit_response.dart';

import '../../../../domain/entities/laporan/detail_laporan.dart';

part 'detail_laporan_response.freezed.dart';
part 'detail_laporan_response.g.dart';

@freezed
class DetailLaporanResponse with _$DetailLaporanResponse {
  const DetailLaporanResponse._();

  const factory DetailLaporanResponse({
    int? statusCode,
    String? message,
    FruitResponse? data,
  }) = _DetailLaporanResponse;

  factory DetailLaporanResponse.fromJson(Map<String, dynamic> json) => _$DetailLaporanResponseFromJson(json);

  DetailLaporan toDomain() => DetailLaporan(
        statusCode: statusCode,
        message: message,
        data: data?.toDomain(),
      );
}
