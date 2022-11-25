import 'package:freezed_annotation/freezed_annotation.dart';

part 'village.freezed.dart';

@freezed
class Village with _$Village {
  const factory Village({
    required int? id,
    required String? name,
    int? kecamatanId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Village;
}
