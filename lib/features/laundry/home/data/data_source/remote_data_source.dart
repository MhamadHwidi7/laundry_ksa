import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/api/api_consumer.dart';
import 'package:laundry_app/core/api/end_points.dart';
import 'package:laundry_app/core/global/base_entity.dart';
import 'package:laundry_app/features/laundry/home/domain/entity/laundry_order_entity.dart';
import 'package:laundry_app/features/laundry/home/domain/params/check_wave_laundry_params.dart';

abstract class HomeBaseRemoteDataSource{
  Future<BaseLaundryOrderEntity> orders();
    Future<BaseEntity> checkWaveLaundry(CheckWaveLaundryParams checkWaveLaundryParams);

}

@Singleton(as: HomeBaseRemoteDataSource)
class HomeRemoteDataSource implements HomeBaseRemoteDataSource{
  final ApiConsumer _apiConsumer;

  HomeRemoteDataSource({required ApiConsumer apiConsumer}) : _apiConsumer = apiConsumer;
  @override
  Future<BaseLaundryOrderEntity> orders() async{
    final response = await _apiConsumer.get(EndPoints.laundryOrders);
    return BaseLaundryOrderEntity.fromJson(response);

  }
  
  @override
  Future<BaseEntity> checkWaveLaundry(CheckWaveLaundryParams checkWaveLaundryParams)async {
   final response = await _apiConsumer.post(EndPoints.checkWaveLaundry,queryParameters: checkWaveLaundryParams.toJson());
    return BaseEntity.fromJson(response);
  }
}