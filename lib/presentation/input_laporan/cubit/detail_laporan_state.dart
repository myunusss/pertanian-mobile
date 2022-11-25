part of 'detail_laporan_cubit.dart';

@freezed
class DetailLaporanState with _$DetailLaporanState {
  const factory DetailLaporanState({
    @Default(ResultState.initial()) ResultState<dynamic> getVillagesResultState,
    @Default([Village(id: 1, name: '')]) List<Village> villages,
    @Default([]) List<Village> filteredVillages,
    @Default(ResultState.initial()) ResultState<dynamic> getDetailLaporanResultState,
    @Default(ResultState.initial()) ResultState<dynamic> postDataLaporanResultState,
    Fruit? data,
    int? villageId,
    @Default(ResultState.initial()) ResultState<List<Kecamatan>?> getListKecamatanResultState,
    List<Kecamatan>? listKecamatan,
    int? kecamatanId,
    @Default(ResultState.initial()) ResultState<Comodities> getComoditiesResultState,
    @Default([]) List<Comodity> comodities,
    int? comodityId,
  }) = _DetailLaporanState;
}
