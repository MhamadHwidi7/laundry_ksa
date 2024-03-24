import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/customer/auth/domain/entity/register_customer_entity.dart';
import 'package:laundry_app/features/customer/auth/domain/params/register_customer_params.dart';
import 'package:laundry_app/features/customer/auth/domain/repository/base_repository.dart';

@singleton
class RegisterCustomerUseCase {
  final AuthCustomerBaseRepository _authCustomerBaseRepository;

  RegisterCustomerUseCase(
      {required AuthCustomerBaseRepository authCustomerBaseRepository})
      : _authCustomerBaseRepository = authCustomerBaseRepository;
  Future<Either<NetworkExceptions, RegisterCustomerEntity>> call(
      RegisterCustomerParams registerCustomerParams) async {
    return _authCustomerBaseRepository.register(registerCustomerParams);
  }
}
