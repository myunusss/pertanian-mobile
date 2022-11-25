import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/laporan/villages.dart';
import 'village_response.dart';

part 'villages_response.freezed.dart';
part 'villages_response.g.dart';

@freezed
class VillagesResponse with _$VillagesResponse {
  const VillagesResponse._();

  const factory VillagesResponse({
    int? statusCode,
    String? message,
    List<VillageResponse>? data,
  }) = _VillagesResponse;

  factory VillagesResponse.fromJson(Map<String, dynamic> json) => _$VillagesResponseFromJson(json);

  Villages toDomain() => Villages(
        statusCode: statusCode,
        message: message,
        data: data?.map((e) => e.toDomain()).toList(),
      );
}
