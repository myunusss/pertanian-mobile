part of 'saran_cubit.dart';

@freezed
class SaranState with _$SaranState {
  const factory SaranState({
    @Default(ResultState.initial()) ResultState<String> postSaranResultState,
  }) = _SaranState;
}
