import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/domain/entities/dashboard/comodities.dart';
import 'package:pertanian/domain/entities/dashboard/dashboard_data.dart';
import 'package:pertanian/domain/usecases/get_comodities_usecase.dart';
import 'package:pertanian/domain/usecases/get_dashboard_usecase.dart';

import '../../../core/unions/result_state.dart';
import '../../../domain/entities/dashboard/comodity.dart';
import '../dashboard_store_controller.dart';

part 'dashboard_cubit.freezed.dart';

part 'dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final GetComoditiesUseCase _getComoditiesUseCase;
  final GetDashboardUseCase _getDashboardUseCase;

  DashboardCubit(
    this._getComoditiesUseCase,
    this._getDashboardUseCase,
  ) : super(const DashboardState());

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

  updateComodityId(String name) async {
    final list = state.comodities.firstWhere((e) => e.name == name);
    emit(state.copyWith(comodityId: list.id ?? 1));
  }

  Future getDashboard() async {
    final cDashboard = Get.put(DashboardStoreController());

    final finalParams = GetDashboardUseCaseParams(
      region: cDashboard.selectedDaerah.value,
      comodityId: state.comodityId.toString(),
      year: cDashboard.selectedYear.value,
      type: cDashboard.selectedType.value,
      category: cDashboard.selectedCategory.toString().replaceAll(' ', '_'),
    );
    // emit(state.copyWith(getDashboardUseCaseParams: finalParams));
    emit(state.copyWith(getDashboardResultState: const ResultState.loading()));

    final result = await _getDashboardUseCase(finalParams);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            getDashboardResultState: ResultState.error(failure: failure),
            dashboardData: null,
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          getDashboardResultState: ResultState.success(data: data.data),
          dashboardData: data.data,
        ),
      ),
    );
  }
}
