import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/customer/auth/domain/entity/log_in_customer_entity.dart';
import 'package:laundry_app/features/customer/auth/domain/params/log_in_params.dart';
import 'package:laundry_app/features/customer/auth/domain/repository/base_repository.dart';

@singleton
class LogInCustomerUseCase {
  final AuthCustomerBaseRepository _authCustomerBaseRepository;

  LogInCustomerUseCase(
      {required AuthCustomerBaseRepository authCustomerBaseRepository})
      : _authCustomerBaseRepository = authCustomerBaseRepository;
  Future<Either<NetworkExceptions, LogInCustomerEntity>> call(
      LogInCustomerParams logInCustomerParams) async {
    return _authCustomerBaseRepository.logIn(logInCustomerParams);
  }
}
