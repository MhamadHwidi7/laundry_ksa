import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/api/api_consumer.dart';
import 'package:laundry_app/core/api/end_points.dart';
import 'package:laundry_app/features/laundry/auth/domain/params/log_in_params.dart';

abstract class AuthLaundryBaseRemoteDataSource {
  Future<void> logIn(LogInLaundryParams logInLaundryParams);
}

@Singleton(as: AuthLaundryBaseRemoteDataSource)
class AuthLaundryRemoteDataSource implements AuthLaundryBaseRemoteDataSource {
  final ApiConsumer _apiConsumer;

  AuthLaundryRemoteDataSource({required ApiConsumer apiConsumer})
      : _apiConsumer = apiConsumer;
  @override
  Future<void> logIn(LogInLaundryParams logInLaundryParams) async {
    final response = await _apiConsumer.post(EndPoints.logInLaundry,
        queryParameters: logInLaundryParams.toJson());
    return response;
  }
}
