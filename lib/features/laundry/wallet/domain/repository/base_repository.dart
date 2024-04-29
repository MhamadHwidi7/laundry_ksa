import 'package:dartz/dartz.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/laundry/wallet/domain/entity/wallet_entity.dart';
import 'package:laundry_app/features/laundry/wallet/domain/params/get_wallet_params.dart';

abstract class WalletBaseRepository{
  Future<Either<NetworkExceptions,WalletLaundryEntity>> getWalletLaundry(GetWalletLaundryParams getWalletDriverParams);
}