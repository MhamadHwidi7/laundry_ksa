import 'package:dartz/dartz.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/laundry/auth/domain/entity/log_in_entity.dart';
import 'package:laundry_app/features/laundry/auth/domain/params/log_in_params.dart';

abstract class AuthLaundryBaseRepository {
  Future<Either<NetworkExceptions, LogInLaundryEntity>> logIn(
      LogInLaundryParams logInLaundryParams);
}
