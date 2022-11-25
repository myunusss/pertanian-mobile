import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/domain/entities/laporan/detail_laporan.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/repositories/my_repository_impl.dart';

@lazySingleton
class GetDetailLaporanUseCase extends FutureUseCase<DetailLaporan, String> {
  final MyRepositoryImpl myRepository;

  GetDetailLaporanUseCase({required this.myRepository});

  @override
  Future<Either<Failure, DetailLaporan>> execute(String params) {
    return myRepository.getDetailLaporan(params);
  }
}
