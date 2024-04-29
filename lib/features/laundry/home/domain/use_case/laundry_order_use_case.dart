import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/laundry/home/domain/entity/laundry_order_entity.dart';
import 'package:laundry_app/features/laundry/home/domain/repository/base_repository.dart';

@singleton
class HomeLaundryUseCase {
  final HomeBaseRepository _homeBaseRepository;

  HomeLaundryUseCase({required HomeBaseRepository homeBaseRepository})
      : _homeBaseRepository = homeBaseRepository;

  Future<Either<NetworkExceptions, BaseLaundryOrderEntity>> call() async {
    return _homeBaseRepository.orders();
  }
}
