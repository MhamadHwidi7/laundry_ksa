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

import 'core/api/api_consumer.dart' as _i10;
import 'core/api/dio_consumer.dart' as _i11;
import 'core/api/logging_interceptor.dart' as _i7;
import 'core/errors/error_interceptor.dart' as _i4;
import 'core/network/network_info.dart' as _i8;
import 'core/third_party_injection.dart' as _i28;
import 'core/utils/isar_utils.dart' as _i6;
import 'core/utils/shared_preference_utils.dart' as _i9;
import 'features/customer/auth/data/data_source/remote_data_souce.dart' as _i12;
import 'features/customer/auth/data/repository/repository_impl.dart' as _i14;
import 'features/customer/auth/domain/repository/base_repository.dart' as _i13;
import 'features/customer/auth/domain/use_case/forget_password_customer_use_case.dart'
    as _i21;
import 'features/customer/auth/domain/use_case/log_in_customer_use_case.dart'
    as _i22;
import 'features/customer/auth/domain/use_case/register_customer_use_case.dart'
    as _i25;
import 'features/driver/auth/data/data_source/remote_data_source.dart' as _i15;
import 'features/driver/auth/data/repository/repository_impl.dart' as _i17;
import 'features/driver/auth/domain/repository/base_repository.dart' as _i16;
import 'features/driver/auth/domain/use_case/log_in_use_case.dart' as _i23;
import 'features/driver/auth/presentation/controllers/cubit/log_in_driver_cubit.dart'
    as _i26;
import 'features/laundry/auth/data/data_source/remote_data_souce.dart' as _i18;
import 'features/laundry/auth/data/repository/repository_impl.dart' as _i20;
import 'features/laundry/auth/domain/repository/base_repository.dart' as _i19;
import 'features/laundry/auth/domain/use_case/log_in_use_case.dart' as _i24;
import 'features/laundry/auth/presentation/controllers/cubit/log_in_laundry_cubit.dart'
    as _i27;

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
    gh.singleton<_i6.IsarUtils>(() => thirdPartyInjection.isarDb);
    gh.singleton<_i7.LoggingInterceptor>(() => _i7.LoggingInterceptor());
    gh.lazySingleton<_i8.NetworkInfo>(() => _i8.NetworkInfoImpl(
        connectionChecker: gh<_i5.InternetConnectionChecker>()));
    gh.singleton<_i9.SharedPreferencesUtils>(
        () => _i9.SharedPreferencesUtils());
    gh.singleton<_i10.ApiConsumer>(() => _i11.DioConsumer(gh<_i3.Dio>()));
    gh.singleton<_i12.AuthCustomerBaseRemoteDataSource>(() =>
        _i12.AuthCustomerRemoteDataSource(apiConsumer: gh<_i10.ApiConsumer>()));
    gh.singleton<_i13.AuthCustomerBaseRepository>(
        () => _i14.AuthCustomerRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              authCustomerBaseRemoteDataSource:
                  gh<_i12.AuthCustomerBaseRemoteDataSource>(),
            ));
    gh.singleton<_i15.AuthDriverBaseRemoteDataSource>(() =>
        _i15.AuthDriverRemoteDataSource(apiConsumer: gh<_i10.ApiConsumer>()));
    gh.singleton<_i16.AuthDriverBaseRepository>(
        () => _i17.AuthDriverRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              authDriverBaseRemoteDataSource:
                  gh<_i15.AuthDriverBaseRemoteDataSource>(),
            ));
    gh.singleton<_i18.AuthLaundryBaseRemoteDataSource>(() =>
        _i18.AuthLaundryRemoteDataSource(apiConsumer: gh<_i10.ApiConsumer>()));
    gh.singleton<_i19.AuthLaundryBaseRepository>(
        () => _i20.AuthLaundryRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              authLaundryBaseRemoteDataSource:
                  gh<_i18.AuthLaundryBaseRemoteDataSource>(),
            ));
    gh.singleton<_i21.ForgetPasswordCustomerUseCase>(() =>
        _i21.ForgetPasswordCustomerUseCase(
            authCustomerBaseRepository: gh<_i13.AuthCustomerBaseRepository>()));
    gh.singleton<_i22.LogInCustomerUseCase>(() => _i22.LogInCustomerUseCase(
        authCustomerBaseRepository: gh<_i13.AuthCustomerBaseRepository>()));
    gh.singleton<_i23.LogInDriverUseCase>(() => _i23.LogInDriverUseCase(
        authDriverBaseRepository: gh<_i16.AuthDriverBaseRepository>()));
    gh.singleton<_i24.LogInLaundryUseCase>(() => _i24.LogInLaundryUseCase(
        authLaundryBaseRepository: gh<_i19.AuthLaundryBaseRepository>()));
    gh.singleton<_i25.RegisterCustomerUseCase>(() =>
        _i25.RegisterCustomerUseCase(
            authCustomerBaseRepository: gh<_i13.AuthCustomerBaseRepository>()));
    gh.factory<_i26.LogInCubit>(() => _i26.LogInCubit(
          gh<_i23.LogInDriverUseCase>(),
          gh<_i9.SharedPreferencesUtils>(),
        ));
    gh.factory<_i27.LogInCubit>(() => _i27.LogInCubit(
          gh<_i24.LogInLaundryUseCase>(),
          gh<_i9.SharedPreferencesUtils>(),
        ));
    return this;
  }
}

class _$ThirdPartyInjection extends _i28.ThirdPartyInjection {}
