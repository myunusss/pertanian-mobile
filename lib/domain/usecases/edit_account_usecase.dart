import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/data/repositories/my_repository_impl.dart';
import 'package:pertanian/domain/entities/settings/user_profile.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';

class EditAccountUseCaseParams extends Equatable {
  final String name;
  final String email;
  final String password;

  const EditAccountUseCaseParams({
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [
        name,
        email,
        password,
      ];
}

@lazySingleton
class EditAccountUseCase extends FutureUseCase<UserProfile, EditAccountUseCaseParams> {
  final MyRepositoryImpl myRepository;

  EditAccountUseCase({required this.myRepository});

  @override
  Future<Either<Failure, UserProfile>> execute(EditAccountUseCaseParams params) {
    return myRepository.editAccount(params);
  }
}
