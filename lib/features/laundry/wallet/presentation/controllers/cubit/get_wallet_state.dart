part of 'get_wallet_cubit.dart';

@freezed
class GetWalletState with _$GetWalletState {
  const factory GetWalletState.loading() = _Loading;
  const factory GetWalletState.success(WalletLaundryEntity walletLaundryEntity) = _Success;
  const factory GetWalletState.error(NetworkExceptions networkExceptions) =
      _Error;
}
