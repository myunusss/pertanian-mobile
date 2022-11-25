import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/domain/entities/dashboard/dashboard_data.dart';

part 'dashboard_data_response.freezed.dart';
part 'dashboard_data_response.g.dart';

@freezed
class DashboardDataResponse with _$DashboardDataResponse {
  const DashboardDataResponse._();

  const factory DashboardDataResponse({
    String? region,
    String? comodityId,
    String? komoditasId,
    String? category,
    String? type,
    String? year,
    @JsonKey(name: 'wilayahArray') List<String>? wilayahArray,
    @JsonKey(name: 'sumKategoryPerWilayah') List<int>? sumKategoryPerWilayah,
    @JsonKey(name: 'colorArray') List<List<int>>? colorArray,
    @JsonKey(name: 'arrKomoditas') List<String>? arrKomoditas,
    @JsonKey(name: 'arrSumHargaProdusen') List<int>? arrSumHargaProdusen,
    @JsonKey(name: 'arrSumHargaGrosir') List<int>? arrSumHargaGrosir,
    @JsonKey(name: 'arrSumHargaEceran') List<int>? arrSumHargaEceran,
    @JsonKey(name: 'colorBarArray') List<List<int>>? colorBarArray,
  }) = _DashboardDataResponse;

  factory DashboardDataResponse.fromJson(Map<String, dynamic> json) => _$DashboardDataResponseFromJson(json);

  DashboardData toDomain() => DashboardData(
        region: region,
        comodityId: comodityId,
        komoditasId: komoditasId,
        category: category,
        type: type,
        year: year,
        wilayahArray: wilayahArray,
        sumKategoryPerWilayah: sumKategoryPerWilayah,
        colorArray: colorArray,
        arrKomoditas: arrKomoditas,
        arrSumHargaProdusen: arrSumHargaProdusen,
        arrSumHargaGrosir: arrSumHargaGrosir,
        arrSumHargaEceran: arrSumHargaEceran,
        colorBarArray: colorBarArray,
      );
}
