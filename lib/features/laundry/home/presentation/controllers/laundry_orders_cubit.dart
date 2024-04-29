import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/laundry/home/domain/entity/laundry_order_entity.dart';
import 'package:laundry_app/features/laundry/home/domain/repository/base_repository.dart';
import 'package:laundry_app/features/laundry/home/domain/use_case/laundry_order_use_case.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'laundry_orders_state.dart';
part 'laundry_orders_cubit.freezed.dart';

@injectable
class LaundryOrdersCubit extends Cubit<LaundryOrdersState> {
final HomeLaundryUseCase _homeLaundryUseCase;
  LaundryOrdersCubit(this._homeLaundryUseCase) : super(const LaundryOrdersState.loading());
  Future<void> emitGetLaundryOrders()async{
    emit(const LaundryOrdersState.loading());
    final response = await _homeLaundryUseCase.call();
    response.fold((l) => emit(LaundryOrdersState.error(l)), (r) => emit(LaundryOrdersState.success(r)));
  }}
