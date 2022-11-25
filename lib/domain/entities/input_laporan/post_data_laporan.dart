import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_data_laporan.freezed.dart';

@freezed
class PostDataLaporan with _$PostDataLaporan {
  const factory PostDataLaporan({
    required int? statusCode,
    required String? message,
  }) = _PostDataLaporan;
}
