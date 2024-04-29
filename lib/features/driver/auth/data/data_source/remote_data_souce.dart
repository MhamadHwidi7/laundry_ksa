import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/api/api_consumer.dart';
import 'package:laundry_app/core/api/end_points.dart';
import 'package:laundry_app/features/driver/auth/domain/entity/become_driver_entity.dart';
import 'package:laundry_app/features/driver/auth/domain/entity/log_in_driver_entity.dart';
import 'package:laundry_app/features/driver/auth/domain/params/becomer_driver_params.dart';
import 'package:laundry_app/features/driver/auth/domain/params/log_in_params.dart';

abstract class AuthDriverBaseRemoteDataSource {
  Future<LogInDriverEntity> logIn(LogInDriverParams logInDriverParams);
    Future<BecomeDriverEntity> becomeDriver(BecomeDriverParams becomeDriverParams);

}

@Singleton(as: AuthDriverBaseRemoteDataSource)
class AuthDriverRemoteDataSource implements AuthDriverBaseRemoteDataSource {
  final ApiConsumer _apiConsumer;

  AuthDriverRemoteDataSource({required ApiConsumer apiConsumer})
      : _apiConsumer = apiConsumer;
  @override
  Future<LogInDriverEntity> logIn(LogInDriverParams logInDriverParams) async {
    final response = await _apiConsumer.post(EndPoints.logInDriver,
        body: logInDriverParams.toJson());
    return LogInDriverEntity.fromJson(response);
  }
  
  @override
  Future<BecomeDriverEntity> becomeDriver(BecomeDriverParams becomeDriverParams) async{
     final response = await _apiConsumer.post(EndPoints.becomeDriver,
        body: becomeDriverParams.toJson());
    return BecomeDriverEntity.fromJson(response);
  }
}
