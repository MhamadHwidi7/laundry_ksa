import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/features/driver/home/domain/entity/base_driver_order_entity.dart';
import 'package:laundry_app/features/driver/home/domain/repository/base_repository.dart';

@singleton
class GetOrdersUseCase {
  final DriverHomeBaseRepository _driverHomeBaseRepository;
  GetOrdersUseCase({required DriverHomeBaseRepository driverHomeBaseRepository}) : _driverHomeBaseRepository = driverHomeBaseRepository;
  Future<Either<NetworkExceptions, BaseDriverOrdersEntity>> call(
      ) async {
    return _driverHomeBaseRepository.getOrders();
  }
}
