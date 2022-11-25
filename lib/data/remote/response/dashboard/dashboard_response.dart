import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/domain/entities/dashboard/dashboard.dart';

import 'dashboard_data_response.dart';

part 'dashboard_response.freezed.dart';
part 'dashboard_response.g.dart';

@freezed
class DashboardResponse with _$DashboardResponse {
  const DashboardResponse._();

  const factory DashboardResponse({
    int? statusCode,
    String? message,
    DashboardDataResponse? data,
  }) = _DashboardResponse;

  factory DashboardResponse.fromJson(Map<String, dynamic> json) => _$DashboardResponseFromJson(json);

  Dashboard toDomain() => Dashboard(
        statusCode: statusCode,
        message: message,
        data: data?.toDomain(),
      );
}
