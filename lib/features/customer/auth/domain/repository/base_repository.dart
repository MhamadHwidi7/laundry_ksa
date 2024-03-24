import 'package:dartz/dartz.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/customer/auth/domain/entity/log_in_customer_entity.dart';
import 'package:laundry_app/features/customer/auth/domain/entity/register_customer_entity.dart';
import 'package:laundry_app/features/customer/auth/domain/params/log_in_params.dart';
import 'package:laundry_app/features/customer/auth/domain/params/register_customer_params.dart';

abstract class AuthCustomerBaseRepository {
  ///todo:making it void just for now
  Future<Either<NetworkExceptions, LogInCustomerEntity>> logIn(
      LogInCustomerParams logInCustomerParams);
  Future<Either<NetworkExceptions, RegisterCustomerEntity>> register(
      RegisterCustomerParams registerCustomerParams);
}
