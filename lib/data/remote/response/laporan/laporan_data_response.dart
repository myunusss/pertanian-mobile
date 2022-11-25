import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/domain/entities/dashboard/dashboard_data.dart';
import 'package:pertanian/domain/entities/laporan/laporan_data.dart';

import '../../../../domain/entities/laporan/fruit.dart';
import 'fruit_response.dart';

part 'laporan_data_response.freezed.dart';
part 'laporan_data_response.g.dart';

@freezed
class LaporanDataResponse with _$LaporanDataResponse {
  const LaporanDataResponse._();

  const factory LaporanDataResponse({
    String? year,
    List<FruitResponse>? fruits,
    List<FruitResponse>? vegetables,
    List<FruitResponse>? biopharmaceuticals,
  }) = _LaporanDataResponse;

  factory LaporanDataResponse.fromJson(Map<String, dynamic> json) => _$LaporanDataResponseFromJson(json);

  LaporanData toDomain() => LaporanData(
        year: year,
        fruits: fruits?.map((e) => e.toDomain()).toList(),
        vegetables: vegetables?.map((e) => e.toDomain()).toList(),
        biopharmaceuticals: biopharmaceuticals?.map((e) => e.toDomain()).toList(),
      );
}
