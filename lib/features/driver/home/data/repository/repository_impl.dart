import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/global/base_entity.dart';
import 'package:laundry_app/core/network/network_info.dart';
import 'package:laundry_app/features/driver/home/data/data_source/remote_data_source.dart';
import 'package:laundry_app/features/driver/home/domain/entity/base_driver_order_entity.dart';
import 'package:laundry_app/features/driver/home/domain/params/check_order_status_params.dart';
import 'package:laundry_app/features/driver/home/domain/params/check_wave_driver_params.dart';
import 'package:laundry_app/features/driver/home/domain/repository/base_repository.dart';
@Singleton(as: DriverHomeBaseRepository)
class DriverHomeRepositoryImpl implements DriverHomeBaseRepository{
  final NetworkInfo _networkInfo;
  final DriverHomeBaseRemoteDataSource _driverHomeBaseRemoteDataSource;

  DriverHomeRepositoryImpl({required NetworkInfo networkInfo, required DriverHomeBaseRemoteDataSource driverHomeBaseRemoteDataSource}) : _networkInfo = networkInfo, _driverHomeBaseRemoteDataSource = driverHomeBaseRemoteDataSource;
  @override
  Future<Either<NetworkExceptions, BaseDriverOrdersEntity>> getOrders() async{
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _driverHomeBaseRemoteDataSource.getOrders();
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> checkOrderStatusDriver(CheckOrderStatusDriverParams checkOrderStatusDriverParams) async{
     if (await _networkInfo.isConnected) {
      try {
        final response =
            await _driverHomeBaseRemoteDataSource.checkOrderStatusDriver(checkOrderStatusDriverParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> checkWaveDriver(CheckWaveDriverParams checkWaveDriverParams) async{
     if (await _networkInfo.isConnected) {
      try {
        final response =
            await _driverHomeBaseRemoteDataSource.checkWaveDriver(checkWaveDriverParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
  }
