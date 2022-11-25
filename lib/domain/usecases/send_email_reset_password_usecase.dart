import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/repositories/my_repository_impl.dart';

class SendEmailUseCaseParams extends Equatable {
  final String email;

  const SendEmailUseCaseParams({
    required this.email,
  });

  @override
  List<Object?> get props => [email];
}

@lazySingleton
class SendEmailResetPasswordUseCase extends FutureUseCase<String, SendEmailUseCaseParams> {
  final MyRepositoryImpl myRepository;

  SendEmailResetPasswordUseCase({required this.myRepository});

  @override
  Future<Either<Failure, String>> execute(SendEmailUseCaseParams params) {
    return myRepository.sendEmailResetPassword(params);
  }
}
