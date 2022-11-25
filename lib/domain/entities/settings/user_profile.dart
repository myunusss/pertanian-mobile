import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/domain/entities/login/user.dart';

part 'user_profile.freezed.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required int? statusCode,
    required String? message,
    required User? data,
  }) = _UserProfile;
}
