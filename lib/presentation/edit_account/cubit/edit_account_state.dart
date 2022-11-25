part of 'edit_account_cubit.dart';

@freezed
class EditAccountState with _$EditAccountState {
  const factory EditAccountState({
    @Default(ResultState.initial()) ResultState<UserProfile?> editAccountResultState,
  }) = _EditAccountState;
}
