import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/domain/entities/settings/user_profile.dart';
import 'package:pertanian/domain/usecases/edit_account_usecase.dart';

import '../../../core/unions/result_state.dart';

part 'edit_account_cubit.freezed.dart';

part 'edit_account_state.dart';

@injectable
class EditAccountCubit extends Cubit<EditAccountState> {
  final EditAccountUseCase _editAccountUseCase;

  EditAccountCubit(
    this._editAccountUseCase,
  ) : super(const EditAccountState());

  editAccount(
    String name,
    String email,
    String password,
  ) async {
    emit(state.copyWith(editAccountResultState: const ResultState.loading()));

    final result = await _editAccountUseCase(
      EditAccountUseCaseParams(
        name: name,
        email: email,
        password: password,
      ),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            editAccountResultState: ResultState.error(failure: failure),
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          editAccountResultState: ResultState.success(data: data),
        ),
      ),
    );

    Timer(const Duration(seconds: 1), () {
      emit(state.copyWith(editAccountResultState: const ResultState.initial()));
    });
  }
}
