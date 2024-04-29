import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/global/base_entity.dart';
import 'package:laundry_app/features/driver/home/domain/params/check_order_status_params.dart';
import 'package:laundry_app/features/driver/home/domain/use_case/check_order_status_use_case.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'check_order_driver_cubit.freezed.dart';
part 'check_order_driver_state.dart';
@injectable
class CheckOrderDriverCubit extends Cubit<CheckOrderDriverState> {
final CheckOrderStatusDriverUseCase _checkOrderStatusDriverUseCase;
  CheckOrderDriverCubit(this._checkOrderStatusDriverUseCase) : super(const CheckOrderDriverState.loading());
  Future<void> emitCheckOrderStatus({required CheckOrderStatusDriverParams checkOrderStatusDriverParams})async{
    emit(const CheckOrderDriverState.loading());
    final response = await _checkOrderStatusDriverUseCase.call(checkOrderStatusDriverParams: checkOrderStatusDriverParams);
    response.fold((l) => emit(CheckOrderDriverState.error(l)), (r) => emit(CheckOrderDriverState.success(r)));
  }}
