import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/const/enums.dart';
import '../../../core/unions/result_state.dart';
import '../../../domain/usecases/send_email_reset_password_usecase.dart';
import '../../../domain/usecases/send_otp_reset_password_usecase copy.dart';
import '../../../domain/usecases/send_otp_reset_password_usecase.dart';

part 'forgot_password_cubit.freezed.dart';
part 'forgot_password_state.dart';

@injectable
class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final SendEmailResetPasswordUseCase _sendEmailResetPasswordUseCase;
  final SendOTPResetPasswordUseCase _sendOTPResetPasswordUseCase;
  final SendResetPasswordUseCase _sendResetPasswordUseCase;

  ForgotPasswordCubit(
    this._sendEmailResetPasswordUseCase,
    this._sendOTPResetPasswordUseCase,
    this._sendResetPasswordUseCase,
  ) : super(ForgotPasswordState.initial());

  sendEmail(String email) async {
    emit(state.copyWith(sendEmailResultState: const ResultState.loading()));
    final result = await _sendEmailResetPasswordUseCase(SendEmailUseCaseParams(email: email));

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            sendEmailResultState: ResultState.error(failure: failure),
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          sendEmailResultState: ResultState.success(data: data),
          resetStep: ResetPasswordSteps.sendOtp,
        ),
      ),
    );
  }

  sendOTP(String otp) async {
    emit(state.copyWith(sendOTPResultState: const ResultState.loading()));
    final result = await _sendOTPResetPasswordUseCase(SendOTPUseCaseParams(otp: otp));

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            sendOTPResultState: ResultState.error(failure: failure),
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          sendOTPResultState: ResultState.success(data: data),
          resetStep: ResetPasswordSteps.sendNewPassword,
          validOtp: otp,
        ),
      ),
    );
  }

  sendResetPassword(String password) async {
    emit(state.copyWith(sendResetPasswordResultState: const ResultState.loading()));
    final result = await _sendResetPasswordUseCase(SendResetPasswordUseCaseParams(
      otp: state.validOtp,
      password: password,
    ));

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            sendResetPasswordResultState: ResultState.error(failure: failure),
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          sendResetPasswordResultState: ResultState.success(data: data),
          resetStep: ResetPasswordSteps.sendEmail,
        ),
      ),
    );
  }

  changeStep(ResetPasswordSteps step) {
    emit(
      state.copyWith(resetStep: step),
    );
  }
}
