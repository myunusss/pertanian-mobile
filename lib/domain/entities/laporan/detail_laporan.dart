import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/domain/entities/laporan/fruit.dart';

part 'detail_laporan.freezed.dart';

@freezed
class DetailLaporan with _$DetailLaporan {
  const factory DetailLaporan({
    required int? statusCode,
    required String? message,
    required Fruit? data,
  }) = _DetailLaporan;
}
