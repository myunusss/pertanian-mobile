import 'package:freezed_annotation/freezed_annotation.dart';

import '../settings/kecamatan.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required int? id,
    required String? name,
    required String? email,
    required String? emailVerifiedAt,
    required int? kecamatanId,
    required String? otp,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    required Kecamatan? kecamatan,
  }) = _User;
}
