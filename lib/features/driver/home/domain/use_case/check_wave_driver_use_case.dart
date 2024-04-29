import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/global/base_entity.dart';
import 'package:laundry_app/features/driver/home/domain/params/check_wave_driver_params.dart';
import 'package:laundry_app/features/driver/home/domain/repository/base_repository.dart';

@singleton
class CheckWaveDriverUseCase {
  final DriverHomeBaseRepository _driverHomeBaseRepository;
  CheckWaveDriverUseCase({required DriverHomeBaseRepository driverHomeBaseRepository}) : _driverHomeBaseRepository = driverHomeBaseRepository;
  Future<Either<NetworkExceptions, BaseEntity>> call(
      {required CheckWaveDriverParams checkWaveDriverParams}) async {
    return _driverHomeBaseRepository.checkWaveDriver(checkWaveDriverParams);
  }
}
