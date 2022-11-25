import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/core/base/usecase/no_param.dart';
import 'package:pertanian/domain/entities/laporan/laporan.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/repositories/my_repository_impl.dart';

@lazySingleton
class GetLaporanVerifikasiUseCase extends FutureUseCase<Laporan, NoParam> {
  final MyRepositoryImpl myRepository;

  GetLaporanVerifikasiUseCase({required this.myRepository});

  @override
  Future<Either<Failure, Laporan>> execute(NoParam params) {
    return myRepository.getLaporanVerifikasi(params);
  }
}
