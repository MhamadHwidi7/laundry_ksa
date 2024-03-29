import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/customer/auth/domain/params/forget_password_customer_params.dart';
import 'package:laundry_app/features/customer/auth/domain/repository/base_repository.dart';

@singleton
class ForgetPasswordCustomerUseCase {
  final AuthCustomerBaseRepository _authCustomerBaseRepository;

  ForgetPasswordCustomerUseCase(
      {required AuthCustomerBaseRepository authCustomerBaseRepository})
      : _authCustomerBaseRepository = authCustomerBaseRepository;

  Future<Either<NetworkExceptions, void>> call(
      ForgetPasswordCustomerParams forgetPasswordCustomerParams) async {
    return await _authCustomerBaseRepository
        .forgetPassword(forgetPasswordCustomerParams);
  }
}
