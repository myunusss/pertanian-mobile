import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/core/base/usecase/no_param.dart';
import 'package:pertanian/domain/entities/laporan/fruit.dart';
import 'package:pertanian/domain/entities/laporan/laporan_data.dart';
import 'package:pertanian/domain/usecases/delete_laporan_usecase.dart';
import 'package:pertanian/domain/usecases/get_laporan_verifikasi_usecase.dart';

import '../../../core/unions/result_state.dart';

part 'verifikasi_cubit.freezed.dart';
part 'verifikasi_state.dart';

@injectable
class VerifikasiCubit extends Cubit<VerifikasiState> {
  final GetLaporanVerifikasiUseCase _getLaporanVerifikasiUseCase;
  final DeleteLaporanUseCase _deleteLaporanUseCase;

  VerifikasiCubit(
    this._getLaporanVerifikasiUseCase,
    this._deleteLaporanUseCase,
  ) : super(const VerifikasiState());

  getLaporanVerifikasi() async {
    emit(state.copyWith(getLaporanVerifikasiResultState: const ResultState.loading()));

    final result = await _getLaporanVerifikasiUseCase(const NoParam());

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            getLaporanVerifikasiResultState: ResultState.error(failure: failure),
            fruits: [],
            vegetables: [],
            biopharmaceuticals: [],
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          getLaporanVerifikasiResultState: ResultState.success(data: data),
          laporanData: data.data,
          fruits: data.data?.fruits ?? [],
          vegetables: data.data?.vegetables ?? [],
          biopharmaceuticals: data.data?.biopharmaceuticals ?? [],
        ),
      ),
    );
  }

  deleteLaporan(String id) async {
    emit(state.copyWith(deleteLaporanResultState: const ResultState.loading()));

    final result = await _deleteLaporanUseCase(id);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            deleteLaporanResultState: ResultState.error(failure: failure),
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          deleteLaporanResultState: const ResultState.success(data: null),
        ),
      ),
    );
  }

  resetDeleteState() async {
    emit(state.copyWith(deleteLaporanResultState: const ResultState.initial()));
  }
}
