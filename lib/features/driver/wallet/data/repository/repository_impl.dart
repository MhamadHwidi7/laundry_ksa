import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/network/network_info.dart';
import 'package:laundry_app/features/driver/wallet/data/data_source/remote_data_source.dart';
import 'package:laundry_app/features/driver/wallet/domain/entity/wallet_driver_entity.dart';
import 'package:laundry_app/features/driver/wallet/domain/params/wallet_driver_params.dart';
import 'package:laundry_app/features/driver/wallet/domain/repository/base_repository.dart';

@Singleton(as: WalletDriverBaseRepository)
class WalletRepositoryImpl implements WalletDriverBaseRepository{
  final NetworkInfo _networkInfo;
  final WalletDriverBaseRemoteDataSource _walletDriverBaseRemoteDataSource;

  WalletRepositoryImpl({required NetworkInfo networkInfo, required WalletDriverBaseRemoteDataSource walletDriverBaseRemoteDataSource}) : _networkInfo = networkInfo, _walletDriverBaseRemoteDataSource = walletDriverBaseRemoteDataSource;

  @override
  Future<Either<NetworkExceptions, WalletDriverEntity>> getWalletDriver(WalletDriverParams walletDriverParams)async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _walletDriverBaseRemoteDataSource.getWalletDriver(walletDriverParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }


}