import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/utils/shared_preference_utils.dart';
import 'package:laundry_app/features/laundry/auth/domain/entity/log_in_entity.dart';
import 'package:laundry_app/features/laundry/auth/domain/params/log_in_params.dart';
import 'package:laundry_app/features/laundry/auth/domain/use_case/log_in_use_case.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'log_in_laundry_state.dart';
part 'log_in_laundry_cubit.freezed.dart';

@injectable
class LogInLaundCubit extends Cubit<LogInLaundState> {
  final LogInLaundryUseCase _logInLaundryUseCase;
  final SharedPreferencesUtils _sharedPreferencesUtils;
  LogInLaundCubit(
    this._logInLaundryUseCase,
    this._sharedPreferencesUtils,
  ) : super(const LogInLaundState.initial());

  Future<void> emitLogInlaundry(LogInLaundryParams logInLaundryParams) async {
    emit(const LogInLaundState.loading());
    final response = await _logInLaundryUseCase.call(logInLaundryParams);

    response.fold((l) => emit(LogInLaundState.error(l)), (r) async {
      _sharedPreferencesUtils.init();
      await _sharedPreferencesUtils.setToken(r.token);
      emit(LogInLaundState.success(r));
      if (kDebugMode) {
        print("Token Here : ${_sharedPreferencesUtils.getToken()}");
      }
    });
  }
}
