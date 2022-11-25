import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/data/repositories/my_repository_impl.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../entities/input_laporan/post_data_laporan.dart';

class PostDataLaporanUseCaseParams extends Equatable {
  final int desa;
  final int comodity;
  final String luasTanam;
  final String tanHasil;
  final String produksi;
  final String provitas;
  final String hargaProdusen;
  final String hargaGrosir;
  final String hargaEceran;

  const PostDataLaporanUseCaseParams({
    required this.desa,
    required this.comodity,
    required this.luasTanam,
    required this.tanHasil,
    required this.produksi,
    required this.provitas,
    required this.hargaProdusen,
    required this.hargaGrosir,
    required this.hargaEceran,
  });

  @override
  List<Object> get props => [
        desa,
        comodity,
        luasTanam,
        tanHasil,
        produksi,
        provitas,
        hargaProdusen,
        hargaGrosir,
        hargaEceran,
      ];
}

@lazySingleton
class PostDataLaporanUseCase extends FutureUseCase<String, PostDataLaporanUseCaseParams> {
  final MyRepositoryImpl myRepository;

  PostDataLaporanUseCase({required this.myRepository});

  @override
  Future<Either<Failure, String>> execute(PostDataLaporanUseCaseParams params) {
    return myRepository.postDataLaporan(params);
  }
}
