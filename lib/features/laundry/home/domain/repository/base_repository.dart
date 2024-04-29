import 'package:dartz/dartz.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/global/base_entity.dart';
import 'package:laundry_app/features/laundry/home/domain/entity/laundry_order_entity.dart';
import 'package:laundry_app/features/laundry/home/domain/params/check_wave_laundry_params.dart';

abstract class HomeBaseRepository{
  Future<Either<NetworkExceptions,BaseLaundryOrderEntity>> orders();
    Future<Either<NetworkExceptions,BaseEntity>> checkWaveLaundry(CheckWaveLaundryParams checkWaveLaundryParams);

}