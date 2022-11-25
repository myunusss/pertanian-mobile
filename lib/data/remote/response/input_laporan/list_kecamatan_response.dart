import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/data/remote/response/settings/kecamatan_response.dart';
import 'package:pertanian/domain/entities/input_laporan/list_kecamatan.dart';

part 'list_kecamatan_response.freezed.dart';
part 'list_kecamatan_response.g.dart';

@freezed
class ListKecamatanResponse with _$ListKecamatanResponse {
  const ListKecamatanResponse._();

  const factory ListKecamatanResponse({
    int? statusCode,
    String? message,
    List<KecamatanResponse>? data,
  }) = _ListKecamatanResponse;

  factory ListKecamatanResponse.fromJson(Map<String, dynamic> json) => _$ListKecamatanResponseFromJson(json);

  ListKecamatan toDomain() => ListKecamatan(
        statusCode: statusCode,
        message: message,
        data: data?.map((e) => e.toDomain()).toList(),
      );
}
