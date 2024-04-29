import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/api/api_consumer.dart';
import 'package:laundry_app/core/api/end_points.dart';
import 'package:laundry_app/features/driver/wallet/domain/entity/wallet_driver_entity.dart';
import 'package:laundry_app/features/driver/wallet/domain/params/wallet_driver_params.dart';

abstract class WalletDriverBaseRemoteDataSource{
  Future<WalletDriverEntity> getWalletDriver(WalletDriverParams walletDriverParams);
}

@Singleton(as:WalletDriverBaseRemoteDataSource )
class WalletRemoteDataSource implements WalletDriverBaseRemoteDataSource{
  final ApiConsumer _apiConsumer;

  WalletRemoteDataSource({required ApiConsumer apiConsumer}) : _apiConsumer = apiConsumer;
  
  @override
  Future<WalletDriverEntity> getWalletDriver(WalletDriverParams walletDriverParams) async{
    final response = await _apiConsumer.get(EndPoints.statistcsDriver,queryParameters: walletDriverParams.toJson());
    
    return WalletDriverEntity.fromJson(response);
  }


}