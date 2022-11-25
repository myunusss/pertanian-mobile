import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/core/base/usecase/no_param.dart';
import 'package:pertanian/domain/entities/laporan/villages.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/repositories/my_repository_impl.dart';

@lazySingleton
class GetVillagesUseCase extends FutureUseCase<Villages, int?> {
  final MyRepositoryImpl myRepository;

  GetVillagesUseCase({required this.myRepository});

  @override
  Future<Either<Failure, Villages>> execute(int? params) {
    return myRepository.getVillages(params);
  }
}
