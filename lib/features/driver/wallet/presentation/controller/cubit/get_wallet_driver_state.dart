part of 'get_wallet_driver_cubit.dart';

@freezed
class GetWalletDriverState with _$GetWalletDriverState {
  const factory GetWalletDriverState.loading() = _Loading;
  const factory GetWalletDriverState.success(WalletDriverEntity walletDriverEntity) = _Success;
  const factory GetWalletDriverState.error(NetworkExceptions networkExceptions) =
      _Error;
}
