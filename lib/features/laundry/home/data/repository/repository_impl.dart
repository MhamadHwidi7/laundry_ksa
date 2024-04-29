import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/global/base_entity.dart';
import 'package:laundry_app/core/network/network_info.dart';
import 'package:laundry_app/features/laundry/home/data/data_source/remote_data_source.dart';
import 'package:laundry_app/features/laundry/home/domain/entity/laundry_order_entity.dart';
import 'package:laundry_app/features/laundry/home/domain/params/check_wave_laundry_params.dart';
import 'package:laundry_app/features/laundry/home/domain/repository/base_repository.dart';

@Singleton(as: HomeBaseRepository)
class HomeRepositoryImpl implements HomeBaseRepository{
  final NetworkInfo _networkInfo;
  final HomeBaseRemoteDataSource _homeBaseRemoteDataSource;

  HomeRepositoryImpl({required NetworkInfo networkInfo, required HomeBaseRemoteDataSource homeBaseRemoteDataSource}) : _networkInfo = networkInfo, _homeBaseRemoteDataSource = homeBaseRemoteDataSource;
  @override
  Future<Either<NetworkExceptions, BaseLaundryOrderEntity>> orders() async{
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _homeBaseRemoteDataSource.orders();
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> checkWaveLaundry(CheckWaveLaundryParams checkWaveLaundryParams) async{
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _homeBaseRemoteDataSource.checkWaveLaundry(checkWaveLaundryParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}