import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/network/network_info.dart';
import 'package:laundry_app/features/laundry/wallet/data/data_source/remote_data_source.dart';
import 'package:laundry_app/features/laundry/wallet/domain/entity/wallet_entity.dart';
import 'package:laundry_app/features/laundry/wallet/domain/params/get_wallet_params.dart';
import 'package:laundry_app/features/laundry/wallet/domain/repository/base_repository.dart';
@Singleton(as: WalletBaseRepository)
class WalletRepositoryImpl implements WalletBaseRepository{
  final NetworkInfo _networkInfo;
  final WalletBaseRemoteDataSource _walletBaseRemoteDataSource;

  WalletRepositoryImpl({required NetworkInfo networkInfo, required WalletBaseRemoteDataSource walletBaseRemoteDataSource}) : _networkInfo = networkInfo, _walletBaseRemoteDataSource = walletBaseRemoteDataSource;
  @override
  Future<Either<NetworkExceptions, WalletLaundryEntity>> getWalletLaundry(GetWalletLaundryParams getWalletDriverParams)async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _walletBaseRemoteDataSource.getWalletLaundry(getWalletDriverParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}