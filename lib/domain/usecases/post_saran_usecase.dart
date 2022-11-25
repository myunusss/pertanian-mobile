import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/data/repositories/my_repository_impl.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../entities/saran/post_saran.dart';

class PostSaranUseCaseParams extends Equatable {
  final String name;
  final String saran;

  const PostSaranUseCaseParams({
    required this.name,
    required this.saran,
  });

  @override
  List<Object> get props => [
        name,
        saran,
      ];
}

@lazySingleton
class PostSaranUseCase extends FutureUseCase<PostSaran, PostSaranUseCaseParams> {
  final MyRepositoryImpl myRepository;

  PostSaranUseCase({required this.myRepository});

  @override
  Future<Either<Failure, PostSaran>> execute(PostSaranUseCaseParams params) {
    return myRepository.postSaran(params);
  }
}
