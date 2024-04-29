import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/api/api_consumer.dart';
import 'package:laundry_app/core/api/end_points.dart';
import 'package:laundry_app/features/laundry/wallet/domain/entity/wallet_entity.dart';
import 'package:laundry_app/features/laundry/wallet/domain/params/get_wallet_params.dart';

abstract class WalletBaseRemoteDataSource{
  Future<WalletLaundryEntity> getWalletLaundry(GetWalletLaundryParams getWalletParams);
}

@Singleton(as:WalletBaseRemoteDataSource )
class WalletRemoteDataSource implements WalletBaseRemoteDataSource{
  final ApiConsumer _apiConsumer;

  WalletRemoteDataSource({required ApiConsumer apiConsumer}) : _apiConsumer = apiConsumer;
  
  @override
  Future<WalletLaundryEntity> getWalletLaundry(GetWalletLaundryParams getWalletParams) async{
    final response = await _apiConsumer.get(EndPoints.statistcsLaundry,queryParameters: getWalletParams.toJson());
    
    return WalletLaundryEntity.fromJson(response);
  }


}