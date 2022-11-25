import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/data/remote/response/dashboard/comodity_response.dart';

import '../../../../domain/entities/dashboard/comodities.dart';

part 'comodities_response.freezed.dart';
part 'comodities_response.g.dart';

@freezed
class ComoditiesResponse with _$ComoditiesResponse {
  const ComoditiesResponse._();

  const factory ComoditiesResponse({
    int? statusCode,
    String? message,
    List<ComodityResponse>? data,
  }) = _ComoditiesResponse;

  factory ComoditiesResponse.fromJson(Map<String, dynamic> json) => _$ComoditiesResponseFromJson(json);

  Comodities toDomain() => Comodities(
        statusCode: statusCode,
        message: message,
        data: data?.map((e) => e.toDomain()).toList(),
      );
}
