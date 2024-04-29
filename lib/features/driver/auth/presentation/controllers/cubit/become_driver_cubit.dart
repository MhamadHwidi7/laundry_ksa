import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/driver/auth/domain/entity/become_driver_entity.dart';
import 'package:laundry_app/features/driver/auth/domain/params/becomer_driver_params.dart';
import 'package:laundry_app/features/driver/auth/domain/use_case/become_driver_use_case.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'become_driver_cubit.freezed.dart';

part 'become_driver_state.dart';
@injectable
class BecomeDriverCubit extends Cubit<BecomeDriverState> {
final BecomeDriverUseCase _becomeDriverUseCase;
  BecomeDriverCubit(this._becomeDriverUseCase) : super(const BecomeDriverState.initial());
  Future<void> emitApplyToBecomeDriver({required BecomeDriverParams becomeDriverParams})async{
    emit(const BecomeDriverState.loading());
    final response = await _becomeDriverUseCase.call(becomeDriverParams);
    response.fold((l) => emit(BecomeDriverState.error(l)), (r) => emit(BecomeDriverState.success(r)));
  }}
