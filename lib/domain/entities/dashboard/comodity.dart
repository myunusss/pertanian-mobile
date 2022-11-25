import 'package:freezed_annotation/freezed_annotation.dart';

part 'comodity.freezed.dart';

@freezed
class Comodity with _$Comodity {
  const factory Comodity({
    int? id,
    String? name,
    String? type,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Comodity;
}
