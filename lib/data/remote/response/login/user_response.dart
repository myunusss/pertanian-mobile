import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/data/remote/response/settings/kecamatan_response.dart';
import 'package:pertanian/domain/entities/login/user.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const UserResponse._();

  const factory UserResponse({
    required int? id,
    required String? name,
    required String? email,
    required String? otp,
    required KecamatanResponse? kecamatan,
    @JsonKey(name: 'kecamatan_id') required int? kecamatanId,
    @JsonKey(name: 'email_verified_at') required String? emailVerifiedAt,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

  User toDomain() => User(
      id: id,
      name: name,
      email: email,
      otp: otp,
      emailVerifiedAt: emailVerifiedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      kecamatan: kecamatan?.toDomain(),
      kecamatanId: kecamatanId);
}
