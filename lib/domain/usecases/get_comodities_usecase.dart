import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/data/repositories/my_repository_impl.dart';
import 'package:pertanian/domain/entities/dashboard/comodities.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';

@lazySingleton
class GetComoditiesUseCase extends FutureUseCase<Comodities, String> {
  final MyRepositoryImpl myRepository;

  GetComoditiesUseCase({required this.myRepository});

  @override
  Future<Either<Failure, Comodities>> execute(String params) {
    return myRepository.getComodities(params);
  }
}
