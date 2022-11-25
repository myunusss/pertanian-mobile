import 'package:freezed_annotation/freezed_annotation.dart';

import 'laporan_data.dart';

part 'laporan.freezed.dart';

@freezed
class Laporan with _$Laporan {
  const factory Laporan({
    required int? statusCode,
    required String? message,
    required LaporanData? data,
  }) = _Laporan;
}
