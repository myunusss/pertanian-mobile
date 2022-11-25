import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/data/remote/response/dashboard/comodity_response.dart';

import '../../../../domain/entities/laporan/village.dart';

part 'village_response.freezed.dart';
part 'village_response.g.dart';

@freezed
class VillageResponse with _$VillageResponse {
  const VillageResponse._();

  const factory VillageResponse({
    int? id,
    String? name,
    @JsonKey(name: 'kecamatan_id') int? kecamatanId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    ComodityResponse? comodity,
  }) = _VillageResponse;

  factory VillageResponse.fromJson(Map<String, dynamic> json) => _$VillageResponseFromJson(json);

  Village toDomain() => Village(
        id: id,
        name: name,
        kecamatanId: kecamatanId,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
