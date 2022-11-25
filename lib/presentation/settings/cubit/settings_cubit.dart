import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/domain/entities/login/user.dart';
import 'package:pertanian/domain/usecases/get_user_profile_usecase.dart';

import '../../../core/base/usecase/no_param.dart';
import '../../../core/unions/result_state.dart';
import '../../../domain/usecases/do_logout_usecase.dart';

part 'settings_cubit.freezed.dart';

part 'settings_state.dart';

@injectable
class SettingsCubit extends Cubit<SettingsState> {
  final GetUserProfileUseCase _getUserProfileUseCase;
  final DoLogoutUseCase _doLogoutUseCase;

  SettingsCubit(
    this._getUserProfileUseCase,
    this._doLogoutUseCase,
  ) : super(const SettingsState());

  getUserProfile() async {
    emit(state.copyWith(getUserProfileResultState: const ResultState.loading()));

    final result = await _getUserProfileUseCase(const NoParam());

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            getUserProfileResultState: ResultState.error(failure: failure),
            user: null,
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          getUserProfileResultState: ResultState.success(data: data.data!),
          user: data.data,
        ),
      ),
    );
  }

  doLogOut() async {
    emit(state.copyWith(logoutResultState: const ResultState.loading()));

    final result = await _doLogoutUseCase(const NoParam());

    result.fold(
      (failure) => emit(
        state.copyWith(
          logoutResultState: ResultState.error(failure: failure),
        ),
      ),
      (data) => emit(
        state.copyWith(
          logoutResultState: const ResultState.success(data: null),
        ),
      ),
    );
  }
}
