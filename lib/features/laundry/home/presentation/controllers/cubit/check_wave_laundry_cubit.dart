import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/global/base_entity.dart';
import 'package:laundry_app/features/laundry/home/domain/params/check_wave_laundry_params.dart';
import 'package:laundry_app/features/laundry/home/domain/use_case/check_wave_laundry_use_case.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'check_wave_laundry_cubit.freezed.dart';
part 'check_wave_laundry_state.dart';
@injectable
class CheckWaveLaundryCubit extends Cubit<CheckWaveLaundryState> {
final CheckWaveLaundryUseCase _checkWaveLaundryUseCase;
  CheckWaveLaundryCubit(this._checkWaveLaundryUseCase) : super(const CheckWaveLaundryState.idle());
  Future<void> emitCheckOrderStatus({required CheckWaveLaundryParams checkWaveLaundryParams})async{
    emit(const CheckWaveLaundryState.loading());
    final response = await _checkWaveLaundryUseCase.call(checkWaveLaundryParams: checkWaveLaundryParams);
    response.fold((l) => emit(CheckWaveLaundryState.error(l)), (r) => emit(CheckWaveLaundryState.success(r)));
  }}
