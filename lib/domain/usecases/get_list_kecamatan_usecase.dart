import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/core/base/usecase/no_param.dart';
import 'package:pertanian/data/repositories/my_repository_impl.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../entities/input_laporan/list_kecamatan.dart';

@lazySingleton
class GetListKecamatanUseCase extends FutureUseCase<ListKecamatan, NoParam> {
  final MyRepositoryImpl myRepository;

  GetListKecamatanUseCase({required this.myRepository});

  @override
  Future<Either<Failure, ListKecamatan>> execute(NoParam params) {
    return myRepository.getListKecamatan(params);
  }
}
