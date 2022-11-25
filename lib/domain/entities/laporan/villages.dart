import 'package:freezed_annotation/freezed_annotation.dart';

import 'village.dart';

part 'villages.freezed.dart';

@freezed
class Villages with _$Villages {
  const factory Villages({
    required int? statusCode,
    required String? message,
    required List<Village>? data,
  }) = _Villages;
}
