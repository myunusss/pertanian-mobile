import 'package:freezed_annotation/freezed_annotation.dart';

import 'comodity.dart';

part 'comodities.freezed.dart';

@freezed
class Comodities with _$Comodities {
  const factory Comodities({
    required int? statusCode,
    required String? message,
    required List<Comodity>? data,
  }) = _Comodities;
}
