import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/login/login.dart';
import 'user_response.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const LoginResponse._();

  const factory LoginResponse({
    int? statusCode,
    String? message,
    UserResponse? data,
    String? accessToken,
    String? tokenType,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Login toDomain() => Login(
        statusCode: statusCode,
        message: message,
        data: data?.toDomain(),
        accessToken: accessToken,
        tokenType: tokenType,
      );
}
