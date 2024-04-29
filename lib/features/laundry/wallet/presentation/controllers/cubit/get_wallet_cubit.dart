import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/laundry/wallet/domain/entity/wallet_entity.dart';
import 'package:laundry_app/features/laundry/wallet/domain/params/get_wallet_params.dart';
import 'package:laundry_app/features/laundry/wallet/domain/use_case/wallet_use_case.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_wallet_cubit.freezed.dart';

part 'get_wallet_state.dart';
@injectable
class GetWalletCubit extends Cubit<GetWalletState> {
final WalletLaundryUseCase _walletUseCase;
  GetWalletCubit(this._walletUseCase) : super(const GetWalletState.loading());
  Future<void> emitGetWalletLaundry({required GetWalletLaundryParams getWalletLaundryParams})async{
    emit(const GetWalletState.loading());
    final response = await _walletUseCase.call(getWalletLaundryParams: getWalletLaundryParams);
    response.fold((l) => emit(GetWalletState.error(l)), (r) => emit(GetWalletState.success(r)));
  }}
