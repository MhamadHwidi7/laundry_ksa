import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/global/base_entity.dart';
import 'package:laundry_app/features/driver/home/domain/params/check_wave_driver_params.dart';
import 'package:laundry_app/features/driver/home/domain/use_case/check_wave_driver_use_case.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'check_wave_driver_cubit.freezed.dart';
part 'check_wave_driver_state.dart';
@injectable
class CheckWaveDriverCubit extends Cubit<CheckWaveDriverState> {
final CheckWaveDriverUseCase _checkWaveDriverUseCase;
  CheckWaveDriverCubit(this._checkWaveDriverUseCase) : super(const CheckWaveDriverState.idle());
  Future<void> emitCheckOrderStatus({required CheckWaveDriverParams checkWaveDriverParams})async{
    emit(const CheckWaveDriverState.loading());
    final response = await _checkWaveDriverUseCase.call(checkWaveDriverParams: checkWaveDriverParams);
    response.fold((l) => emit(CheckWaveDriverState.error(l)), (r) => emit(CheckWaveDriverState.success(r)));
  }}
