part of 'verifikasi_cubit.dart';

@freezed
class VerifikasiState with _$VerifikasiState {
  const factory VerifikasiState({
    @Default(ResultState.initial()) ResultState<dynamic> getLaporanVerifikasiResultState,
    @Default(ResultState.initial()) ResultState<dynamic> deleteLaporanResultState,
    LaporanData? laporanData,
    @Default([]) List<Fruit> fruits,
    @Default([]) List<Fruit> vegetables,
    @Default([]) List<Fruit> biopharmaceuticals,
  }) = _VerifikasiState;
}
