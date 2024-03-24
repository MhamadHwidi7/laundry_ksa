import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/network/network_info.dart';
import 'package:laundry_app/features/customer/auth/data/data_source/remote_data_souce.dart';
import 'package:laundry_app/features/customer/auth/domain/entity/log_in_customer_entity.dart';
import 'package:laundry_app/features/customer/auth/domain/entity/register_customer_entity.dart';
import 'package:laundry_app/features/customer/auth/domain/params/log_in_params.dart';
import 'package:laundry_app/features/customer/auth/domain/params/register_customer_params.dart';
import 'package:laundry_app/features/customer/auth/domain/repository/base_repository.dart';

@Singleton(as: AuthCustomerBaseRepository)
class AuthCustomerRepositoryImpl implements AuthCustomerBaseRepository {
  final NetworkInfo _networkInfo;
  final AuthCustomerBaseRemoteDataSource _authCustomerBaseRemoteDataSource;

  AuthCustomerRepositoryImpl(
      {required NetworkInfo networkInfo,
      required AuthCustomerBaseRemoteDataSource
          authCustomerBaseRemoteDataSource})
      : _networkInfo = networkInfo,
        _authCustomerBaseRemoteDataSource = authCustomerBaseRemoteDataSource;

  @override
  Future<Either<NetworkExceptions, LogInCustomerEntity>> logIn(
      LogInCustomerParams logInCustomerParams) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _authCustomerBaseRemoteDataSource.logIn(logInCustomerParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, RegisterCustomerEntity>> register(
      RegisterCustomerParams registerCustomerParams) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _authCustomerBaseRemoteDataSource
            .register(registerCustomerParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
