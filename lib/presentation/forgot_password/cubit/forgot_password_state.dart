part of 'forgot_password_cubit.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    @Default(ResultState.initial()) ResultState<dynamic> sendEmailResultState,
    @Default(ResultState.initial()) ResultState<dynamic> sendOTPResultState,
    @Default(ResultState.initial()) ResultState<dynamic> sendResetPasswordResultState,
    required ResetPasswordSteps? resetStep,
    required String validOtp,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() => const ForgotPasswordState(
        resetStep: ResetPasswordSteps.sendEmail,
        validOtp: '',
      );
}
