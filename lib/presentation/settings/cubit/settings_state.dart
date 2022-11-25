part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(ResultState.initial()) ResultState<User?> getUserProfileResultState,
    @Default(ResultState.initial()) ResultState<dynamic> logoutResultState,
    User? user,
  }) = _SettingsState;
}
