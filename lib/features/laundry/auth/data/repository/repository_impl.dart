import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/network/network_info.dart';
import 'package:laundry_app/features/laundry/auth/data/data_source/remote_data_souce.dart';
import 'package:laundry_app/features/laundry/auth/domain/params/log_in_params.dart';
import 'package:laundry_app/features/laundry/auth/domain/repository/base_repository.dart';

@Singleton(as: AuthLaundryBaseRepository)
class AuthLaundryRepositoryImpl implements AuthLaundryBaseRepository {
  final NetworkInfo _networkInfo;
  final AuthLaundryBaseRemoteDataSource _authLaundryBaseRemoteDataSource;

  AuthLaundryRepositoryImpl(
      {required NetworkInfo networkInfo,
      required AuthLaundryBaseRemoteDataSource authLaundryBaseRemoteDataSource})
      : _networkInfo = networkInfo,
        _authLaundryBaseRemoteDataSource = authLaundryBaseRemoteDataSource;

  @override
  Future<Either<NetworkExceptions, void>> logIn(
      LogInLaundryParams logInLaundryParams) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _authLaundryBaseRemoteDataSource.logIn(logInLaundryParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
