import 'package:injectable/injectable.dart';
import 'package:laundry_app/core/api/api_consumer.dart';
import 'package:laundry_app/core/api/end_points.dart';
import 'package:laundry_app/features/customer/auth/data/model/log_in_customer_model.dart';
import 'package:laundry_app/features/customer/auth/data/model/register_customer_model.dart';
import 'package:laundry_app/features/customer/auth/domain/params/log_in_params.dart';
import 'package:laundry_app/features/customer/auth/domain/params/register_customer_params.dart';

abstract class AuthCustomerBaseRemoteDataSource {
  Future<LogInCustomerModel> logIn(LogInCustomerParams logInCustomerParams);
  Future<RegisterCustomerModel> register(
      RegisterCustomerParams registerCustomerParams);
}

@Singleton(as: AuthCustomerBaseRemoteDataSource)
class AuthCustomerRemoteDataSource implements AuthCustomerBaseRemoteDataSource {
  final ApiConsumer _apiConsumer;

  AuthCustomerRemoteDataSource({required ApiConsumer apiConsumer})
      : _apiConsumer = apiConsumer;
  @override
  Future<LogInCustomerModel> logIn(
      LogInCustomerParams logInCustomerParams) async {
    final response = await _apiConsumer.post(EndPoints.logInCustomer,
        queryParameters: logInCustomerParams.toJson());
    return response;
  }

  @override
  Future<RegisterCustomerModel> register(
      RegisterCustomerParams registerCustomerParams) async {
    final response = await _apiConsumer.post(EndPoints.registerCustomer,
        queryParameters: registerCustomerParams.toJson());
    return response;
  }
}
