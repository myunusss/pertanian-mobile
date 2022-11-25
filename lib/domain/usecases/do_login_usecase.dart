import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/data/repositories/my_repository_impl.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../entities/login/login.dart';

class DoLoginUseCaseParams extends Equatable {
  final String email;
  final String password;
  final bool rememberMe;

  const DoLoginUseCaseParams({
    required this.email,
    required this.password,
    required this.rememberMe,
  });

  @override
  List<Object> get props => [
        email,
        password,
        rememberMe,
      ];
}

@lazySingleton
class DoLoginUseCase extends FutureUseCase<Login, DoLoginUseCaseParams> {
  final MyRepositoryImpl myRepository;

  DoLoginUseCase({required this.myRepository});

  @override
  Future<Either<Failure, Login>> execute(DoLoginUseCaseParams params) {
    return myRepository.doLogin(params);
  }
}
