// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;

import 'core/api/api_consumer.dart' as _i9;
import 'core/api/dio_consumer.dart' as _i10;
import 'core/api/logging_interceptor.dart' as _i6;
import 'core/errors/error_interceptor.dart' as _i4;
import 'core/network/network_info.dart' as _i7;
import 'core/third_party_injection.dart' as _i26;
import 'core/utils/shared_preference_utils.dart' as _i8;
import 'features/customer/auth/data/data_source/remote_data_souce.dart' as _i11;
import 'features/customer/auth/data/repository/repository_impl.dart' as _i13;
import 'features/customer/auth/domain/repository/base_repository.dart' as _i12;
import 'features/customer/auth/domain/use_case/log_in_customer_use_case.dart'
    as _i20;
import 'features/customer/auth/domain/use_case/register_customer_use_case.dart'
    as _i23;
import 'features/driver/auth/data/data_source/remote_data_souce.dart' as _i14;
import 'features/driver/auth/data/repository/repository_impl.dart' as _i16;
import 'features/driver/auth/domain/repository/base_repository.dart' as _i15;
import 'features/driver/auth/domain/use_case/log_in_use_case.dart' as _i21;
import 'features/driver/auth/presentation/controllers/cubit/log_in_driver_cubit.dart'
    as _i25;
import 'features/laundry/auth/data/data_source/remote_data_souce.dart' as _i17;
import 'features/laundry/auth/data/repository/repository_impl.dart' as _i19;
import 'features/laundry/auth/domain/repository/base_repository.dart' as _i18;
import 'features/laundry/auth/domain/use_case/log_in_use_case.dart' as _i22;
import 'features/laundry/auth/presentation/controllers/cubit/log_in_laundry_cubit.dart'
    as _i24;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyInjection = _$ThirdPartyInjection();
    gh.singleton<_i3.Dio>(() => thirdPartyInjection.dio);
    gh.singleton<_i4.ErrorInterceptor>(() => _i4.ErrorInterceptor());
    gh.singleton<_i5.InternetConnectionChecker>(
        () => thirdPartyInjection.internetConnectionChecker);
    gh.singleton<_i6.LoggingInterceptor>(() => _i6.LoggingInterceptor());
    gh.lazySingleton<_i7.NetworkInfo>(() => _i7.NetworkInfoImpl(
        connectionChecker: gh<_i5.InternetConnectionChecker>()));
    gh.singleton<_i8.SharedPreferencesUtils>(
        () => _i8.SharedPreferencesUtils());
    gh.singleton<_i9.ApiConsumer>(() => _i10.DioConsumer(gh<_i3.Dio>()));
    gh.singleton<_i11.AuthCustomerBaseRemoteDataSource>(() =>
        _i11.AuthCustomerRemoteDataSource(apiConsumer: gh<_i9.ApiConsumer>()));
    gh.singleton<_i12.AuthCustomerBaseRepository>(
        () => _i13.AuthCustomerRepositoryImpl(
              networkInfo: gh<_i7.NetworkInfo>(),
              authCustomerBaseRemoteDataSource:
                  gh<_i11.AuthCustomerBaseRemoteDataSource>(),
            ));
    gh.singleton<_i14.AuthDriverBaseRemoteDataSource>(() =>
        _i14.AuthDriverRemoteDataSource(apiConsumer: gh<_i9.ApiConsumer>()));
    gh.singleton<_i15.AuthDriverBaseRepository>(
        () => _i16.AuthDriverRepositoryImpl(
              networkInfo: gh<_i7.NetworkInfo>(),
              authDriverBaseRemoteDataSource:
                  gh<_i14.AuthDriverBaseRemoteDataSource>(),
            ));
    gh.singleton<_i17.AuthLaundryBaseRemoteDataSource>(() =>
        _i17.AuthLaundryRemoteDataSource(apiConsumer: gh<_i9.ApiConsumer>()));
    gh.singleton<_i18.AuthLaundryBaseRepository>(
        () => _i19.AuthLaundryRepositoryImpl(
              networkInfo: gh<_i7.NetworkInfo>(),
              authLaundryBaseRemoteDataSource:
                  gh<_i17.AuthLaundryBaseRemoteDataSource>(),
            ));
    gh.singleton<_i20.LogInCustomerUseCase>(() => _i20.LogInCustomerUseCase(
        authCustomerBaseRepository: gh<_i12.AuthCustomerBaseRepository>()));
    gh.singleton<_i21.LogInDriverUseCase>(() => _i21.LogInDriverUseCase(
        authDriverBaseRepository: gh<_i15.AuthDriverBaseRepository>()));
    gh.singleton<_i22.LogInLaundryUseCase>(() => _i22.LogInLaundryUseCase(
        authLaundryBaseRepository: gh<_i18.AuthLaundryBaseRepository>()));
    gh.singleton<_i23.RegisterCustomerUseCase>(() =>
        _i23.RegisterCustomerUseCase(
            authCustomerBaseRepository: gh<_i12.AuthCustomerBaseRepository>()));
    gh.factory<_i24.LogInCubit>(() => _i24.LogInCubit(
          gh<_i22.LogInLaundryUseCase>(),
          gh<_i8.SharedPreferencesUtils>(),
        ));
    gh.factory<_i25.LogInCubit>(() => _i25.LogInCubit(
          gh<_i21.LogInDriverUseCase>(),
          gh<_i8.SharedPreferencesUtils>(),
        ));
    return this;
  }
}

class _$ThirdPartyInjection extends _i26.ThirdPartyInjection {}
