import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/domain/entities/laporan/laporan.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/repositories/my_repository_impl.dart';

class GetLaporanUseCaseParams extends Equatable {
  final String year;
  final String query;

  const GetLaporanUseCaseParams({
    required this.year,
    required this.query,
  });

  @override
  List<Object> get props => [
        year,
        query,
      ];
}

@lazySingleton
class GetLaporanUseCase extends FutureUseCase<Laporan, GetLaporanUseCaseParams> {
  final MyRepositoryImpl myRepository;

  GetLaporanUseCase({required this.myRepository});

  @override
  Future<Either<Failure, Laporan>> execute(GetLaporanUseCaseParams params) {
    return myRepository.getLaporan(params);
  }
}
