import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/driver/home/domain/entity/base_driver_order_entity.dart';
import 'package:laundry_app/features/driver/home/domain/use_case/get_orders_use_case.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_orders_cubit.freezed.dart';
part 'get_orders_state.dart';
@injectable
class GetOrdersCubit extends Cubit<GetOrdersState> {
final GetOrdersUseCase _getOrdersUseCase;
  GetOrdersCubit(this._getOrdersUseCase) : super(const GetOrdersState.loading());
  Future<void> emitGetOrders()async{
    emit(const GetOrdersState.loading());
    final response = await _getOrdersUseCase.call();
    response.fold((l) => emit(GetOrdersState.error(l)), (r) => emit(GetOrdersState.success(r)));
  }}
