import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/repositories/my_repository_impl.dart';

class GetExportLaporanUseCaseParams extends Equatable {
  final String year;
  final String type;

  const GetExportLaporanUseCaseParams({
    required this.year,
    required this.type,
  });

  @override
  List<Object> get props => [
        year,
        type,
      ];
}

@lazySingleton
class GetExportLaporanUseCase extends FutureUseCase<String, GetExportLaporanUseCaseParams> {
  final MyRepositoryImpl myRepository;

  GetExportLaporanUseCase({required this.myRepository});

  @override
  Future<Either<Failure, String>> execute(GetExportLaporanUseCaseParams params) {
    return myRepository.getExportLaporan(params);
  }
}
