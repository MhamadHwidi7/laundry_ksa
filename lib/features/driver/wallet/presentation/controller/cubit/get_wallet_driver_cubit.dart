import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/driver/wallet/domain/entity/wallet_driver_entity.dart';
import 'package:laundry_app/features/driver/wallet/domain/params/wallet_driver_params.dart';
import 'package:laundry_app/features/driver/wallet/domain/use_case/wallet_driver_use_case.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_wallet_driver_cubit.freezed.dart';
part 'get_wallet_driver_state.dart';
@injectable
class GetWalletDriverCubit extends Cubit<GetWalletDriverState> {
final WalletDriverUseCase _walletUseCase;
  GetWalletDriverCubit(this._walletUseCase) : super(const GetWalletDriverState.loading());
  Future<void> emitGetWalletLaundry({required WalletDriverParams walletDriverParams})async{
    emit(const GetWalletDriverState.loading());
    final response = await _walletUseCase.call(walletDriverParams: walletDriverParams);
    response.fold((l) => emit(GetWalletDriverState.error(l)), (r) => emit(GetWalletDriverState.success(r)));
  }}
