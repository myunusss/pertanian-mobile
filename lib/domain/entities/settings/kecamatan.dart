import 'package:freezed_annotation/freezed_annotation.dart';

part 'kecamatan.freezed.dart';

@freezed
class Kecamatan with _$Kecamatan {
  const factory Kecamatan({
    required int? id,
    required String? name,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _Kecamatan;
}
