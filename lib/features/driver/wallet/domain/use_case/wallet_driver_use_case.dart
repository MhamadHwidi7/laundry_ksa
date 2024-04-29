import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/driver/wallet/domain/entity/wallet_driver_entity.dart';
import 'package:laundry_app/features/driver/wallet/domain/params/wallet_driver_params.dart';
import 'package:laundry_app/features/driver/wallet/domain/repository/base_repository.dart';

@singleton
class WalletDriverUseCase {
  final WalletDriverBaseRepository _walletDriverBaseRepository;

  WalletDriverUseCase({required WalletDriverBaseRepository walletDriverBaseRepository}) : _walletDriverBaseRepository = walletDriverBaseRepository;



  Future<Either<NetworkExceptions, WalletDriverEntity>> call({required WalletDriverParams walletDriverParams}) async {
    return await _walletDriverBaseRepository.getWalletDriver(walletDriverParams);
  }
}
