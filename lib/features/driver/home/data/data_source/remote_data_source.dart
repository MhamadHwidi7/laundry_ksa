import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/api/api_consumer.dart';
import 'package:laundry_app/core/api/end_points.dart';
import 'package:laundry_app/core/global/base_entity.dart';
import 'package:laundry_app/features/driver/home/domain/entity/base_driver_order_entity.dart';
import 'package:laundry_app/features/driver/home/domain/params/check_order_status_params.dart';
import 'package:laundry_app/features/driver/home/domain/params/check_wave_driver_params.dart';

abstract class DriverHomeBaseRemoteDataSource{
  Future<BaseDriverOrdersEntity> getOrders();
    Future<BaseEntity> checkOrderStatusDriver(CheckOrderStatusDriverParams checkOrderStatusDriverParams);
    Future<BaseEntity> checkWaveDriver(CheckWaveDriverParams checkWaveDriverParams);

}
@Singleton(as: DriverHomeBaseRemoteDataSource)
class DriverHomeRemoteDataSourceImpl implements DriverHomeBaseRemoteDataSource{
  final ApiConsumer _apiConsumer;

  DriverHomeRemoteDataSourceImpl({required ApiConsumer apiConsumer}) : _apiConsumer = apiConsumer;
  
  @override
  Future<BaseDriverOrdersEntity> getOrders() async{
    final response = await _apiConsumer.get(EndPoints.getOrders);
    return BaseDriverOrdersEntity.fromJson(response);

  }
  
  @override
  Future<BaseEntity> checkOrderStatusDriver(CheckOrderStatusDriverParams checkOrderStatusDriverParams)async {
   final response = await _apiConsumer.post(EndPoints.checkOrderDriver,body: checkOrderStatusDriverParams.toJson());
    return BaseEntity.fromJson(response);
  }
  
  @override
  Future<BaseEntity> checkWaveDriver(CheckWaveDriverParams checkWaveDriverParams) async{
   final response = await _apiConsumer.post(EndPoints.checkWaveByDriver,queryParameters: checkWaveDriverParams.toJson());
    return BaseEntity.fromJson(response);
  }
}