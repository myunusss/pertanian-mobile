import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/domain/entities/laporan/fruit.dart';
import 'package:pertanian/domain/entities/laporan/laporan_data.dart';
import 'package:pertanian/domain/usecases/get_export_laporan_usecase.dart';
import 'package:pertanian/presentation/laporan/laporan_store_controller.dart';

import '../../../core/unions/result_state.dart';
import '../../../domain/usecases/get_laporan_usecase.dart';

part 'laporan_cubit.freezed.dart';

part 'laporan_state.dart';

@injectable
class LaporanCubit extends Cubit<LaporanState> {
  final GetLaporanUseCase _getLaporanUseCase;
  final GetExportLaporanUseCase _getExportLaporanUseCase;

  LaporanCubit(
    this._getLaporanUseCase,
    this._getExportLaporanUseCase,
  ) : super(const LaporanState());

  getLaporan() async {
    final cLaporan = Get.put(LaporanStoreController());

    emit(state.copyWith(getLaporanResultState: const ResultState.loading()));

    final result = await _getLaporanUseCase(
      GetLaporanUseCaseParams(
        year: cLaporan.selectedYear.value,
        query: cLaporan.queryEditingController.text,
      ),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            getLaporanResultState: ResultState.error(failure: failure),
            fruits: [],
            vegetables: [],
            biopharmaceuticals: [],
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          getLaporanResultState: ResultState.success(data: data),
          laporanData: data.data,
          fruits: data.data?.fruits ?? [],
          vegetables: data.data?.vegetables ?? [],
          biopharmaceuticals: data.data?.biopharmaceuticals ?? [],
        ),
      ),
    );
  }

  getExportLaporan() async {
    final cLaporan = Get.put(LaporanStoreController());

    emit(state.copyWith(getExportLaporanResultState: const ResultState.loading()));

    final result = await _getExportLaporanUseCase(
      GetExportLaporanUseCaseParams(
        year: cLaporan.selectedYear.value,
        type: cLaporan.queryEditingController.text,
      ),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            getExportLaporanResultState: ResultState.error(failure: failure),
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          getExportLaporanResultState: ResultState.success(data: data),
        ),
      ),
    );
  }
}
