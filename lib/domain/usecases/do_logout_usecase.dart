import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/core/base/usecase/no_param.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/repositories/my_repository_impl.dart';

class DoLogoutUseCaseParams extends Equatable {
  const DoLogoutUseCaseParams();

  @override
  List<Object> get props => [];
}

@lazySingleton
class DoLogoutUseCase extends FutureUseCase<dynamic, NoParam> {
  final MyRepositoryImpl myRepository;

  DoLogoutUseCase({required this.myRepository});

  @override
  Future<Either<Failure, dynamic>> execute(NoParam params) {
    return myRepository.doLogout(params);
  }
}
