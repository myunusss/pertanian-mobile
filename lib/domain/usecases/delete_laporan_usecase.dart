import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/repositories/my_repository_impl.dart';

@lazySingleton
class DeleteLaporanUseCase extends FutureUseCase<String, String> {
  final MyRepositoryImpl myRepository;

  DeleteLaporanUseCase({required this.myRepository});

  @override
  Future<Either<Failure, String>> execute(String params) {
    return myRepository.deleteLaporan(params);
  }
}
