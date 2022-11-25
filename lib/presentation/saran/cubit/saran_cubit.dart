import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/unions/result_state.dart';
import '../../../domain/usecases/post_saran_usecase.dart';

part 'saran_cubit.freezed.dart';

part 'saran_state.dart';

@injectable
class SaranCubit extends Cubit<SaranState> {
  final PostSaranUseCase _postSaranUseCase;

  SaranCubit(this._postSaranUseCase) : super(const SaranState());

  postSaran(String name, String saran) async {
    emit(state.copyWith(postSaranResultState: const ResultState.loading()));

    final result = await _postSaranUseCase(
      PostSaranUseCaseParams(
        name: name,
        saran: saran,
      ),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            postSaranResultState: ResultState.error(failure: failure),
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          postSaranResultState: ResultState.success(data: data.message ?? ''),
        ),
      ),
    );

    Timer(const Duration(seconds: 1), () {
      emit(state.copyWith(postSaranResultState: const ResultState.initial()));
    });
  }
}
