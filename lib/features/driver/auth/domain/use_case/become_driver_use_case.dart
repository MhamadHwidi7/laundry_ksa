
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/driver/auth/domain/entity/become_driver_entity.dart';
import 'package:laundry_app/features/driver/auth/domain/params/becomer_driver_params.dart';
import 'package:laundry_app/features/driver/auth/domain/repository/base_repository.dart';

@singleton
class BecomeDriverUseCase {
  final AuthDriverBaseRepository _authDriverBaseRepository;

  BecomeDriverUseCase(
      {required AuthDriverBaseRepository authDriverBaseRepository})
      : _authDriverBaseRepository = authDriverBaseRepository;
  Future<Either<NetworkExceptions,BecomeDriverEntity>> call(
      BecomeDriverParams becomeDriverParams) async {
    return _authDriverBaseRepository.becomeDriver(becomeDriverParams);
  }
}
