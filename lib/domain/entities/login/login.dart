import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'login.freezed.dart';

@freezed
class Login with _$Login {
  const factory Login({
    required int? statusCode,
    required User? data,
    required String? message,
    required String? accessToken,
    required String? tokenType,
  }) = _Login;
}
