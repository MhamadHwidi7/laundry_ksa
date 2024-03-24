import 'package:dartz/dartz.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/driver/auth/domain/params/log_in_params.dart';

abstract class AuthDriverBaseRepository {
  ///todo:making it void just for now
  Future<Either<NetworkExceptions, void>> logIn(
      LogInDriverParams logInDriverParams);
}
