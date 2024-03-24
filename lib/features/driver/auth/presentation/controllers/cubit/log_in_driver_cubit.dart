import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/utils/shared_preference_utils.dart';
import 'package:laundry_app/features/driver/auth/domain/params/log_in_params.dart';
import 'package:laundry_app/features/driver/auth/domain/use_case/log_in_use_case.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'log_in_driver_cubit.freezed.dart';

part 'log_in_driver_cubit_state.dart';

@injectable
class LogInCubit extends Cubit<LogInDriverState> {
  final LogInDriverUseCase _logInDriverUseCase;
  final SharedPreferencesUtils _sharedPreferencesUtils;
  LogInCubit(
    this._logInDriverUseCase,
    this._sharedPreferencesUtils,
  ) : super(const LogInDriverState.initial());

  Future<void> emitLogInDriver(LogInDriverParams logInDriverParams) async {
    emit(const LogInDriverState.loading());
    final response = await _logInDriverUseCase.call(logInDriverParams);
    response.fold((l) => emit(LogInDriverState.error(l)), (r) async {
      // await _sharedPreferencesUtils.setToken(r.logInData.token);
      // Wait for setToken to complete before calling getToken
      //final token = _sharedPreferencesUtils.getToken();
      emit(const LogInDriverState.success());
      // Now you can use the token
      if (kDebugMode) {
        // print("Token Here : $token");
      }
    });
  }
}
