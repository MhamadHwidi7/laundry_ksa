import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/laundry/auth/domain/params/log_in_params.dart';
import 'package:laundry_app/features/laundry/auth/domain/repository/base_repository.dart';

@singleton
class LogInLaundryUseCase {
  final AuthLaundryBaseRepository _authLaundryBaseRepository;

  LogInLaundryUseCase(
      {required AuthLaundryBaseRepository authLaundryBaseRepository})
      : _authLaundryBaseRepository = authLaundryBaseRepository;
  Future<Either<NetworkExceptions, void>> call(
      LogInLaundryParams logInLaundryParams) async {
    return _authLaundryBaseRepository.logIn(logInLaundryParams);
  }
}
