part of 'laporan_cubit.dart';

@freezed
class LaporanState with _$LaporanState {
  const factory LaporanState({
    @Default(ResultState.initial()) ResultState<dynamic> getLaporanResultState,
    @Default(ResultState.initial()) ResultState<dynamic> getExportLaporanResultState,
    LaporanData? laporanData,
    @Default([]) List<Fruit> fruits,
    @Default([]) List<Fruit> vegetables,
    @Default([]) List<Fruit> biopharmaceuticals,
  }) = _LaporanState;
}
