import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/utils/shared_preference_utils.dart';
import 'package:laundry_app/features/laundry/auth/domain/params/log_in_params.dart';
import 'package:laundry_app/features/laundry/auth/domain/use_case/log_in_use_case.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'log_in_laundry_cubit.freezed.dart';
part 'log_in_laundry_state.dart';

@injectable
class LogInCubit extends Cubit<LogInLaundryState> {
  final LogInLaundryUseCase _logInLaundryUseCase;
  final SharedPreferencesUtils _sharedPreferencesUtils;
  LogInCubit(
    this._logInLaundryUseCase,
    this._sharedPreferencesUtils,
  ) : super(const LogInLaundryState.initial());

  Future<void> emitLogInlaundry(LogInLaundryParams logInLaundryParams) async {
    emit(const LogInLaundryState.loading());
    final response = await _logInLaundryUseCase.call(logInLaundryParams);
    response.fold((l) => emit(LogInLaundryState.error(l)), (r) async {
      // await _sharedPreferencesUtils.setToken(r.logInData.token);
      // Wait for setToken to complete before calling getToken
      //final token = _sharedPreferencesUtils.getToken();
      emit(const LogInLaundryState.success());
      // Now you can use the token
      if (kDebugMode) {
        // print("Token Here : $token");
      }
    });
  }
}
