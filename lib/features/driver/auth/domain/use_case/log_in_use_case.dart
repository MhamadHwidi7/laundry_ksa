import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/driver/auth/domain/entity/log_in_driver_entity.dart';
import 'package:laundry_app/features/driver/auth/domain/params/log_in_params.dart';
import 'package:laundry_app/features/driver/auth/domain/repository/base_repository.dart';

@singleton
class LogInDriverUseCase {
  final AuthDriverBaseRepository _authDriverBaseRepository;

  LogInDriverUseCase(
      {required AuthDriverBaseRepository authDriverBaseRepository})
      : _authDriverBaseRepository = authDriverBaseRepository;
  Future<Either<NetworkExceptions, LogInDriverEntity>> call(
      LogInDriverParams logInDriverParams) async {
    return _authDriverBaseRepository.logIn(logInDriverParams);
  }
}
