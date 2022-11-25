import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_data.freezed.dart';

@freezed
class DashboardData with _$DashboardData {
  const DashboardData._();

  const factory DashboardData({
    required String? region,
    required String? comodityId,
    required String? komoditasId,
    required String? category,
    required String? type,
    required String? year,
    required List<String>? wilayahArray,
    required List<int>? sumKategoryPerWilayah,
    required List<List<int>>? colorArray,
    required List<String>? arrKomoditas,
    required List<int>? arrSumHargaProdusen,
    required List<int>? arrSumHargaGrosir,
    required List<int>? arrSumHargaEceran,
    required List<List<int>>? colorBarArray,
  }) = _DashboardData;

  List getColorArray() {
    if (colorArray != null) {
      List arrColors = [];
      // for (var element in colorArray!) {
      //   List<int> rgboColor = [];
      //   final strColor = element.replaceAll('rgb', '').replaceAll('(', '').replaceAll(')', '').replaceAll(' ', '');

      //   for (var e in strColor.split(',')) {
      //     rgboColor.add(int.parse(e));
      //   }
      //   rgboColor.add(1); // add opacity 1
      //   arrColors.add(rgboColor);
      // }

      return arrColors;
    } else {
      return [];
    }
  }
}
