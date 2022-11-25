import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/domain/entities/laporan/delete_laporan.dart';

part 'delete_laporan_response.freezed.dart';
part 'delete_laporan_response.g.dart';

@freezed
class DeleteLaporanResponse with _$DeleteLaporanResponse {
  const DeleteLaporanResponse._();

  const factory DeleteLaporanResponse({
    int? statusCode,
    String? message,
  }) = _DeleteLaporanResponse;

  factory DeleteLaporanResponse.fromJson(Map<String, dynamic> json) => _$DeleteLaporanResponseFromJson(json);

  DeleteLaporan toDomain() => DeleteLaporan(
        statusCode: statusCode,
        message: message,
      );
}
