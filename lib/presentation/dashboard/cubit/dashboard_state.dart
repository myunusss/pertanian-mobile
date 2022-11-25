part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(ResultState.initial()) ResultState<Comodities> getComoditiesResultState,
    @Default([Comodity(id: 1, name: '')]) List<Comodity> comodities,
    int? comodityId,
    @Default(ResultState.initial()) ResultState<DashboardData?> getDashboardResultState,
    DashboardData? dashboardData,
    GetDashboardUseCaseParams? getDashboardUseCaseParams,
  }) = _DashboardState;
}
