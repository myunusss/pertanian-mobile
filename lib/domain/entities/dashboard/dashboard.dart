import 'package:freezed_annotation/freezed_annotation.dart';

import 'dashboard_data.dart';

part 'dashboard.freezed.dart';

@freezed
class Dashboard with _$Dashboard {
  const factory Dashboard({
    required int? statusCode,
    required String? message,
    required DashboardData? data,
  }) = _Dashboard;
}
