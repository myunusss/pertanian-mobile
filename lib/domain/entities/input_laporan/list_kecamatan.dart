import 'package:freezed_annotation/freezed_annotation.dart';

import '../settings/kecamatan.dart';

part 'list_kecamatan.freezed.dart';

@freezed
class ListKecamatan with _$ListKecamatan {
  const factory ListKecamatan({
    required int? statusCode,
    required String? message,
    required List<Kecamatan>? data,
  }) = _ListKecamatan;
}
