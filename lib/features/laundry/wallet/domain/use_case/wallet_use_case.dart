
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/laundry/wallet/domain/entity/wallet_entity.dart';
import 'package:laundry_app/features/laundry/wallet/domain/params/get_wallet_params.dart';
import 'package:laundry_app/features/laundry/wallet/domain/repository/base_repository.dart';

@singleton
class WalletLaundryUseCase {
  final WalletBaseRepository _walletBaseRepository;
  WalletLaundryUseCase({required WalletBaseRepository walletBaseRepository}) : _walletBaseRepository = walletBaseRepository;
  Future<Either<NetworkExceptions, WalletLaundryEntity>> call({required GetWalletLaundryParams getWalletLaundryParams}) async {
    return await _walletBaseRepository.getWalletLaundry(getWalletLaundryParams);
  }
}
