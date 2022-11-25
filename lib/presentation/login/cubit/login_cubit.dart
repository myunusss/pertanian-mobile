import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/unions/result_state.dart';
import '../../../domain/entities/login/login.dart';
import '../../../domain/usecases/do_login_usecase.dart';

part 'login_cubit.freezed.dart';

part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final DoLoginUseCase _doLoginUseCase;

  LoginCubit(this._doLoginUseCase) : super(const LoginState());

  saveUsername(String? username) {
    emit(state.copyWith(username: username ?? ''));
  }

  savePassword(String? password) {
    emit(state.copyWith(password: password ?? ''));
  }

  doLogin(String username, String password, bool rememberMe) async {
    emit(state.copyWith(loginResultState: const ResultState.loading()));

    final result = await _doLoginUseCase(
      DoLoginUseCaseParams(
        email: username,
        password: password,
        rememberMe: rememberMe,
      ),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            loginResultState: ResultState.error(failure: failure),
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          loginResultState: ResultState.success(data: data),
        ),
      ),
    );

    Timer(const Duration(seconds: 1), () {
      emit(state.copyWith(loginResultState: const ResultState.initial()));
    });
  }
}
