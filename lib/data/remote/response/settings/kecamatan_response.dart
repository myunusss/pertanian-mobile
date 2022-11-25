import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/domain/entities/settings/kecamatan.dart';

part 'kecamatan_response.freezed.dart';
part 'kecamatan_response.g.dart';

@freezed
class KecamatanResponse with _$KecamatanResponse {
  const KecamatanResponse._();

  const factory KecamatanResponse({
    required int? id,
    required String? name,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
  }) = _KecamatanResponse;

  factory KecamatanResponse.fromJson(Map<String, dynamic> json) => _$KecamatanResponseFromJson(json);

  Kecamatan toDomain() => Kecamatan(
        id: id,
        name: name,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
