import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/domain/entities/input_laporan/post_data_laporan.dart';

part 'post_data_laporan_response.freezed.dart';
part 'post_data_laporan_response.g.dart';

@freezed
class PostDataLaporanResponse with _$PostDataLaporanResponse {
  const PostDataLaporanResponse._();

  const factory PostDataLaporanResponse({
    int? statusCode,
    String? message,
  }) = _PostDataLaporanResponse;

  factory PostDataLaporanResponse.fromJson(Map<String, dynamic> json) => _$PostDataLaporanResponseFromJson(json);

  PostDataLaporan toDomain() => PostDataLaporan(
        statusCode: statusCode,
        message: message,
      );
}
