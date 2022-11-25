import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/domain/entities/saran/post_saran.dart';

part 'post_saran_response.freezed.dart';
part 'post_saran_response.g.dart';

@freezed
class PostSaranResponse with _$PostSaranResponse {
  const PostSaranResponse._();

  const factory PostSaranResponse({
    int? statusCode,
    String? message,
  }) = _PostSaranResponse;

  factory PostSaranResponse.fromJson(Map<String, dynamic> json) => _$PostSaranResponseFromJson(json);

  PostSaran toDomain() => PostSaran(
        statusCode: statusCode,
        message: message,
      );
}
