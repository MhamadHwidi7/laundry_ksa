import 'package:dartz/dartz.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/global/base_entity.dart';
import 'package:laundry_app/features/driver/home/domain/entity/base_driver_order_entity.dart';
import 'package:laundry_app/features/driver/home/domain/params/check_order_status_params.dart';
import 'package:laundry_app/features/driver/home/domain/params/check_wave_driver_params.dart';

abstract class DriverHomeBaseRepository{
  Future<Either<NetworkExceptions,BaseDriverOrdersEntity>> getOrders();
    Future<Either<NetworkExceptions,BaseEntity>> checkOrderStatusDriver(CheckOrderStatusDriverParams checkOrderStatusDriverParams);
    Future<Either<NetworkExceptions,BaseEntity>> checkWaveDriver(CheckWaveDriverParams checkWaveDriverParams);

}