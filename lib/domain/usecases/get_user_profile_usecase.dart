import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/core/base/usecase/no_param.dart';
import 'package:pertanian/domain/entities/settings/user_profile.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/repositories/my_repository_impl.dart';

@lazySingleton
class GetUserProfileUseCase extends FutureUseCase<UserProfile, NoParam> {
  final MyRepositoryImpl myRepository;

  GetUserProfileUseCase({required this.myRepository});

  @override
  Future<Either<Failure, UserProfile>> execute(NoParam params) {
    return myRepository.getUserProfile(params);
  }
}
