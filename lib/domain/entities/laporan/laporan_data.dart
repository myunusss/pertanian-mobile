import 'package:freezed_annotation/freezed_annotation.dart';

import 'fruit.dart';

part 'laporan_data.freezed.dart';

@freezed
class LaporanData with _$LaporanData {
  const factory LaporanData({
    required String? year,
    required List<Fruit>? fruits,
    required List<Fruit>? vegetables,
    required List<Fruit>? biopharmaceuticals,
  }) = _LaporanData;
}
