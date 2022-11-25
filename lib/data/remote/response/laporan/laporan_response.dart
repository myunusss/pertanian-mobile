import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/domain/entities/laporan/laporan.dart';

import 'laporan_data_response.dart';

part 'laporan_response.freezed.dart';
part 'laporan_response.g.dart';

@freezed
class LaporanResponse with _$LaporanResponse {
  const LaporanResponse._();

  const factory LaporanResponse({
    int? statusCode,
    String? message,
    LaporanDataResponse? data,
  }) = _LaporanResponse;

  factory LaporanResponse.fromJson(Map<String, dynamic> json) => _$LaporanResponseFromJson(json);

  Laporan toDomain() => Laporan(
        statusCode: statusCode,
        message: message,
        data: data?.toDomain(),
      );
}
