import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/dashboard/comodity.dart';

part 'comodity_response.freezed.dart';
part 'comodity_response.g.dart';

@freezed
class ComodityResponse with _$ComodityResponse {
  const ComodityResponse._();

  const factory ComodityResponse({
    int? id,
    String? name,
    String? type,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _ComodityResponse;

  factory ComodityResponse.fromJson(Map<String, dynamic> json) => _$ComodityResponseFromJson(json);

  Comodity toDomain() => Comodity(
        id: id,
        name: name,
        type: type,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
