import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/api/api_consumer.dart';
import 'package:laundry_app/core/api/end_points.dart';
import 'package:laundry_app/features/laundry/auth/domain/entity/log_in_entity.dart';
import 'package:laundry_app/features/laundry/auth/domain/params/log_in_params.dart';

abstract class AuthLaundryBaseRemoteDataSource {
  Future<LogInLaundryEntity> logIn(LogInLaundryParams logInLaundryParams);
}

@Singleton(as: AuthLaundryBaseRemoteDataSource)
class AuthLaundryRemoteDataSource implements AuthLaundryBaseRemoteDataSource {
  final ApiConsumer _apiConsumer;

  AuthLaundryRemoteDataSource({required ApiConsumer apiConsumer})
      : _apiConsumer = apiConsumer;
  @override
  Future<LogInLaundryEntity> logIn(LogInLaundryParams logInLaundryParams) async {
    final response = await _apiConsumer.post(EndPoints.logInLaundry,
        body: logInLaundryParams.toJson());
    return LogInLaundryEntity.fromJson(response);
  }
}
