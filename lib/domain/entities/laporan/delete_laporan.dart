import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_laporan.freezed.dart';

@freezed
class DeleteLaporan with _$DeleteLaporan {
  const factory DeleteLaporan({
    required int? statusCode,
    required String? message,
  }) = _DeleteLaporan;
}
