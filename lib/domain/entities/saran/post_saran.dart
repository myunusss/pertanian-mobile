import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_saran.freezed.dart';

@freezed
class PostSaran with _$PostSaran {
  const factory PostSaran({
    required int? statusCode,
    required String? message,
  }) = _PostSaran;
}
