import 'package:dartz/dartz.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/driver/auth/domain/entity/become_driver_entity.dart';
import 'package:laundry_app/features/driver/auth/domain/entity/log_in_driver_entity.dart';
import 'package:laundry_app/features/driver/auth/domain/params/becomer_driver_params.dart';
import 'package:laundry_app/features/driver/auth/domain/params/log_in_params.dart';

abstract class AuthDriverBaseRepository {
  Future<Either<NetworkExceptions, LogInDriverEntity>> logIn(
      LogInDriverParams logInDriverParams);
        Future<Either<NetworkExceptions, BecomeDriverEntity>> becomeDriver(
      BecomeDriverParams becomeDriverParams);
}
