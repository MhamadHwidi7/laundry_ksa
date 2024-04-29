import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/network/network_info.dart';
import 'package:laundry_app/features/driver/auth/data/data_source/remote_data_souce.dart';
import 'package:laundry_app/features/driver/auth/domain/entity/become_driver_entity.dart';
import 'package:laundry_app/features/driver/auth/domain/entity/log_in_driver_entity.dart';
import 'package:laundry_app/features/driver/auth/domain/params/becomer_driver_params.dart';
import 'package:laundry_app/features/driver/auth/domain/params/log_in_params.dart';
import 'package:laundry_app/features/driver/auth/domain/repository/base_repository.dart';

@Singleton(as: AuthDriverBaseRepository)
class AuthDriverRepositoryImpl implements AuthDriverBaseRepository {
  final NetworkInfo _networkInfo;
  final AuthDriverBaseRemoteDataSource _authDriverBaseRemoteDataSource;

  AuthDriverRepositoryImpl(
      {required NetworkInfo networkInfo,
      required AuthDriverBaseRemoteDataSource authDriverBaseRemoteDataSource})
      : _networkInfo = networkInfo,
        _authDriverBaseRemoteDataSource = authDriverBaseRemoteDataSource;

  @override
  Future<Either<NetworkExceptions, LogInDriverEntity>> logIn(
      LogInDriverParams logInDriverParams) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _authDriverBaseRemoteDataSource.logIn(logInDriverParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BecomeDriverEntity>> becomeDriver(BecomeDriverParams becomeDriverParams) async{
       if (await _networkInfo.isConnected) {
      try {
        final response =
            await _authDriverBaseRemoteDataSource.becomeDriver(becomeDriverParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
