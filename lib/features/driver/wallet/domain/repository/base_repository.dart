import 'package:dartz/dartz.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/driver/wallet/domain/entity/wallet_driver_entity.dart';
import 'package:laundry_app/features/driver/wallet/domain/params/wallet_driver_params.dart';

abstract class WalletDriverBaseRepository{
  Future<Either<NetworkExceptions,WalletDriverEntity>> getWalletDriver(WalletDriverParams walletDriverParams);
}