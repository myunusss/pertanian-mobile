import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/data/remote/response/login/user_response.dart';

import '../../../../domain/entities/settings/user_profile.dart';

part 'user_profile_response.freezed.dart';
part 'user_profile_response.g.dart';

@freezed
class UserProfileResponse with _$UserProfileResponse {
  const UserProfileResponse._();

  const factory UserProfileResponse({
    int? statusCode,
    String? message,
    UserResponse? data,
  }) = _UserProfileResponse;

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) => _$UserProfileResponseFromJson(json);

  UserProfile toDomain() => UserProfile(
        statusCode: statusCode,
        message: message,
        data: data?.toDomain(),
      );
}
