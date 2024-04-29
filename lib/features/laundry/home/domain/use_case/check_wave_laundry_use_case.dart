import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/global/base_entity.dart';
import 'package:laundry_app/features/laundry/home/domain/params/check_wave_laundry_params.dart';
import 'package:laundry_app/features/laundry/home/domain/repository/base_repository.dart';

@singleton
class CheckWaveLaundryUseCase {
  final HomeBaseRepository _homeBaseRepository;

  CheckWaveLaundryUseCase({required HomeBaseRepository homeBaseRepository})
      : _homeBaseRepository = homeBaseRepository;

  Future<Either<NetworkExceptions, BaseEntity>> call({required CheckWaveLaundryParams checkWaveLaundryParams}) async {
    return _homeBaseRepository.checkWaveLaundry(checkWaveLaundryParams);
  }
}
