import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/core/base/usecase/no_param.dart';
import 'package:pertanian/domain/entities/laporan/fruit.dart';
import 'package:pertanian/domain/entities/laporan/village.dart';
import 'package:pertanian/domain/entities/settings/kecamatan.dart';
import 'package:pertanian/domain/usecases/get_detail_laporan_usecase.dart';
import 'package:pertanian/domain/usecases/get_list_kecamatan_usecase.dart';
import 'package:pertanian/domain/usecases/get_villages_usecase.dart';
import 'package:pertanian/presentation/input_laporan/input_laporan_store_controller.dart';

import '../../../core/unions/result_state.dart';
import '../../../domain/entities/dashboard/comodities.dart';
import '../../../domain/entities/dashboard/comodity.dart';
import '../../../domain/usecases/get_comodities_usecase.dart';
import '../../../domain/usecases/post_data_laporan_usecase.dart';

part 'detail_laporan_cubit.freezed.dart';
part 'detail_laporan_state.dart';

@injectable
class DetailLaporanCubit extends Cubit<DetailLaporanState> {
  final GetDetailLaporanUseCase _getDetailLaporanUseCase;
  final PostDataLaporanUseCase _postDataLaporanUseCase;
  final GetVillagesUseCase _getVillagesUseCase;
  final GetListKecamatanUseCase _getListKecamatanUseCase;
  final GetComoditiesUseCase _getComoditiesUseCase;

  DetailLaporanCubit(
    this._getDetailLaporanUseCase,
    this._postDataLaporanUseCase,
    this._getVillagesUseCase,
    this._getListKecamatanUseCase,
    this._getComoditiesUseCase,
  ) : super(const DetailLaporanState());

  getListKecamatan() async {
    emit(state.copyWith(
      getListKecamatanResultState: const ResultState.loading(),
      kecamatanId: null,
      listKecamatan: null,
    ));

    final result = await _getListKecamatanUseCase(const NoParam());

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            getListKecamatanResultState: ResultState.error(failure: failure),
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          getListKecamatanResultState: ResultState.success(data: data.data),
          listKecamatan: data.data ?? [],
        ),
      ),
    );
  }

  getVillages() async {
    emit(state.copyWith(
      getVillagesResultState: const ResultState.loading(),
      villageId: null,
      filteredVillages: state.villages,
    ));

    final result = await _getVillagesUseCase(null); // Dibuat null agar dapat semua data

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            getVillagesResultState: ResultState.error(failure: failure),
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          getVillagesResultState: ResultState.success(data: data),
          villages: data.data ?? [],
          filteredVillages: data.data ?? [],
        ),
      ),
    );

    if (result.isRight()) {
      return state.data;
    } else {
      return null;
    }
  }

  updateComodityId(String name) async {
    final list = state.comodities.firstWhere((e) => e.name == name);
    emit(state.copyWith(comodityId: list.id ?? 1));
  }

  updateVillageId(String name) async {
    final list = state.villages.firstWhere((e) => e.name == name);
    emit(state.copyWith(villageId: list.id ?? 1));
  }

  updateKecamatanId(String name) async {
    final list = state.listKecamatan!.firstWhere((e) => e.name == name);
    List<Village> filteredVillage = state.villages.where((e) => e.kecamatanId == list.id).toList();

    emit(state.copyWith(kecamatanId: list.id ?? 1, filteredVillages: filteredVillage, villageId: null));
  }

  Future<Fruit?> getDetailLaporan(Fruit data) async {
    final desa = state.villages.firstWhere((e) => e.id == data.desaId);

    emit(state.copyWith(
      getDetailLaporanResultState: const ResultState.loading(),
      villageId: data.desaId,
      kecamatanId: desa.kecamatanId,
      comodityId: data.comodityId,
    ));

    final result = await _getDetailLaporanUseCase(data.id.toString());

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            getDetailLaporanResultState: ResultState.error(failure: failure),
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          getDetailLaporanResultState: ResultState.success(data: data),
          data: data.data,
        ),
      ),
    );

    if (result.isRight()) {
      return state.data;
    } else {
      return null;
    }
  }

  postDataLaporan(InputLaporanStoreController cLaporan) async {
    final params = PostDataLaporanUseCaseParams(
      desa: cLaporan.isEdit == true ? cLaporan.selectedVillage.value : state.villageId!,
      comodity: state.comodityId!,
      luasTanam: cLaporan.luasTanamEditingController.text,
      tanHasil: cLaporan.tanHasilEditingController.text,
      produksi: cLaporan.produksiEditingController.text,
      provitas: cLaporan.provitasEditingController.text,
      hargaProdusen: cLaporan.hargaProdusenEditingController.text,
      hargaGrosir: cLaporan.hargaGrosirEditingController.text,
      hargaEceran: cLaporan.hargeEceranEditingController.text,
    );

    emit(state.copyWith(postDataLaporanResultState: const ResultState.loading()));

    final result = await _postDataLaporanUseCase(params);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            postDataLaporanResultState: ResultState.error(failure: failure),
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          postDataLaporanResultState: ResultState.success(data: data),
        ),
      ),
    );

    Timer(const Duration(seconds: 1), () {
      emit(state.copyWith(postDataLaporanResultState: const ResultState.initial()));
    });
  }

  updateDataLaporan(PostDataLaporanUseCaseParams data) async {
    emit(state.copyWith(postDataLaporanResultState: const ResultState.loading()));

    final result = await _postDataLaporanUseCase(data);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            postDataLaporanResultState: ResultState.error(failure: failure),
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          postDataLaporanResultState: ResultState.success(data: data),
        ),
      ),
    );

    Timer(const Duration(seconds: 1), () {
      emit(state.copyWith(postDataLaporanResultState: const ResultState.initial()));
    });
  }

  Future getComodities(type) async {
    emit(state.copyWith(
      getComoditiesResultState: const ResultState.loading(),
    ));

    final result = await _getComoditiesUseCase(type);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            getComoditiesResultState: ResultState.error(failure: failure),
            comodities: [],
            comodityId: null,
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          comodities: data.data ?? [],
          comodityId: data.data != null ? data.data![0].id : null,
          getComoditiesResultState: ResultState.success(data: data),
        ),
      ),
    );
  }
}
