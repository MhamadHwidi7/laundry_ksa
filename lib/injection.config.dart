// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;

import 'core/api/api_consumer.dart' as _i16;
import 'core/api/dio_consumer.dart' as _i17;
import 'core/api/logging_interceptor.dart' as _i8;
import 'core/errors/error_interceptor.dart' as _i5;
import 'core/network/network_info.dart' as _i9;
import 'core/third_party_injection.dart' as _i65;
import 'core/utils/isar_utils.dart' as _i7;
import 'core/utils/shared_preference_utils.dart' as _i14;
import 'features/customer/auth/data/data_source/remote_data_souce.dart' as _i18;
import 'features/customer/auth/data/repository/repository_impl.dart' as _i20;
import 'features/customer/auth/domain/repository/base_repository.dart' as _i19;
import 'features/customer/auth/domain/use_case/forget_password_customer_use_case.dart'
    as _i32;
import 'features/customer/auth/domain/use_case/log_in_customer_use_case.dart'
    as _i40;
import 'features/customer/auth/domain/use_case/register_customer_use_case.dart'
    as _i44;
import 'features/customer/map/presentation/controller/radio_button_controller.dart'
    as _i13;
import 'features/customer/payment/data/data_source/local_data_source.dart'
    as _i10;
import 'features/customer/payment/data/repository/repository_impl.dart' as _i12;
import 'features/customer/payment/domain/repository/base_repository.dart'
    as _i11;
import 'features/customer/payment/domain/use_case/add_debit_card_use_case.dart'
    as _i15;
import 'features/customer/payment/domain/use_case/delete_debit_card_use_case.dart'
    as _i28;
import 'features/customer/payment/domain/use_case/get_debit_cards_use_case.dart'
    as _i33;
import 'features/customer/payment/presentation/controllers/cubit/payment_cubit.dart'
    as _i43;
import 'features/customer/payment/presentation/controllers/text_editing_controller.dart'
    as _i3;
import 'features/driver/auth/data/data_source/remote_data_souce.dart' as _i21;
import 'features/driver/auth/data/repository/repository_impl.dart' as _i23;
import 'features/driver/auth/domain/repository/base_repository.dart' as _i22;
import 'features/driver/auth/domain/use_case/become_driver_use_case.dart'
    as _i27;
import 'features/driver/auth/domain/use_case/log_in_use_case.dart' as _i41;
import 'features/driver/auth/presentation/controllers/cubit/become_driver_cubit.dart'
    as _i53;
import 'features/driver/auth/presentation/controllers/log_in_driver_cubit.dart'
    as _i60;
import 'features/driver/home/data/data_source/remote_data_source.dart' as _i29;
import 'features/driver/home/data/repository/repository_impl.dart' as _i31;
import 'features/driver/home/domain/repository/base_repository.dart' as _i30;
import 'features/driver/home/domain/use_case/check_order_status_use_case.dart'
    as _i54;
import 'features/driver/home/domain/use_case/check_wave_driver_use_case.dart'
    as _i55;
import 'features/driver/home/domain/use_case/get_orders_use_case.dart' as _i34;
import 'features/driver/home/presentation/controller/check_order_driver_cubit.dart'
    as _i62;
import 'features/driver/home/presentation/controller/cubit/check_wave_driver_cubit.dart'
    as _i63;
import 'features/driver/home/presentation/controller/get_orders_cubit.dart'
    as _i57;
import 'features/driver/wallet/data/data_source/remote_data_source.dart'
    as _i48;
import 'features/driver/wallet/data/repository/repository_impl.dart' as _i50;
import 'features/driver/wallet/domain/repository/base_repository.dart' as _i49;
import 'features/driver/wallet/domain/use_case/wallet_driver_use_case.dart'
    as _i51;
import 'features/driver/wallet/presentation/controller/cubit/get_wallet_driver_cubit.dart'
    as _i59;
import 'features/laundry/auth/data/data_source/remote_data_souce.dart' as _i24;
import 'features/laundry/auth/data/repository/repository_impl.dart' as _i26;
import 'features/laundry/auth/domain/repository/base_repository.dart' as _i25;
import 'features/laundry/auth/domain/use_case/log_in_use_case.dart' as _i42;
import 'features/laundry/auth/presentation/controllers/cubit/log_in_laundry_cubit.dart'
    as _i61;
import 'features/laundry/home/data/data_source/remote_data_source.dart' as _i35;
import 'features/laundry/home/data/repository/repository_impl.dart' as _i37;
import 'features/laundry/home/domain/repository/base_repository.dart' as _i36;
import 'features/laundry/home/domain/use_case/check_wave_laundry_use_case.dart'
    as _i56;
import 'features/laundry/home/domain/use_case/laundry_order_use_case.dart'
    as _i38;
import 'features/laundry/home/presentation/controllers/cubit/check_wave_laundry_cubit.dart'
    as _i64;
import 'features/laundry/home/presentation/controllers/laundry_orders_cubit.dart'
    as _i39;
import 'features/laundry/wallet/data/data_source/remote_data_source.dart'
    as _i45;
import 'features/laundry/wallet/data/repository/repository_impl.dart' as _i47;
import 'features/laundry/wallet/domain/repository/base_repository.dart' as _i46;
import 'features/laundry/wallet/domain/use_case/wallet_use_case.dart' as _i52;
import 'features/laundry/wallet/presentation/controllers/cubit/get_wallet_cubit.dart'
    as _i58;

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
    gh.singleton<_i3.AddNewCardTextEditingController>(
        () => _i3.AddNewCardTextEditingController());
    gh.singleton<_i4.Dio>(() => thirdPartyInjection.dio);
    gh.singleton<_i5.ErrorInterceptor>(() => _i5.ErrorInterceptor());
    gh.singleton<_i6.InternetConnectionChecker>(
        () => thirdPartyInjection.internetConnectionChecker);
    gh.singleton<_i7.IsarUtils>(() => thirdPartyInjection.isarDb);
    gh.singleton<_i8.LoggingInterceptor>(() => _i8.LoggingInterceptor());
    gh.lazySingleton<_i9.NetworkInfo>(() => _i9.NetworkInfoImpl(
        connectionChecker: gh<_i6.InternetConnectionChecker>()));
    gh.singleton<_i10.PaymentBaseLocalDataSource>(
        () => _i10.PaymentLocalDataSource(gh<_i7.IsarUtils>()));
    gh.singleton<_i11.PaymentBaseRepository>(() => _i12.PaymentRepositoryImpl(
        paymentBaseLocalDataSource: gh<_i10.PaymentBaseLocalDataSource>()));
    gh.singleton<_i13.RadioButtonController>(
        () => _i13.RadioButtonController());
    gh.singleton<_i14.SharedPreferencesUtils>(
        () => thirdPartyInjection.sharedPreferencesUtils);
    gh.singleton<_i15.AddDebitCardUseCase>(() => _i15.AddDebitCardUseCase(
        paymentBaseRepository: gh<_i11.PaymentBaseRepository>()));
    gh.singleton<_i16.ApiConsumer>(() => _i17.DioConsumer(gh<_i4.Dio>()));
    gh.singleton<_i18.AuthCustomerBaseRemoteDataSource>(() =>
        _i18.AuthCustomerRemoteDataSource(apiConsumer: gh<_i16.ApiConsumer>()));
    gh.singleton<_i19.AuthCustomerBaseRepository>(
        () => _i20.AuthCustomerRepositoryImpl(
              networkInfo: gh<_i9.NetworkInfo>(),
              authCustomerBaseRemoteDataSource:
                  gh<_i18.AuthCustomerBaseRemoteDataSource>(),
            ));
    gh.singleton<_i21.AuthDriverBaseRemoteDataSource>(() =>
        _i21.AuthDriverRemoteDataSource(apiConsumer: gh<_i16.ApiConsumer>()));
    gh.singleton<_i22.AuthDriverBaseRepository>(
        () => _i23.AuthDriverRepositoryImpl(
              networkInfo: gh<_i9.NetworkInfo>(),
              authDriverBaseRemoteDataSource:
                  gh<_i21.AuthDriverBaseRemoteDataSource>(),
            ));
    gh.singleton<_i24.AuthLaundryBaseRemoteDataSource>(() =>
        _i24.AuthLaundryRemoteDataSource(apiConsumer: gh<_i16.ApiConsumer>()));
    gh.singleton<_i25.AuthLaundryBaseRepository>(
        () => _i26.AuthLaundryRepositoryImpl(
              networkInfo: gh<_i9.NetworkInfo>(),
              authLaundryBaseRemoteDataSource:
                  gh<_i24.AuthLaundryBaseRemoteDataSource>(),
            ));
    gh.singleton<_i27.BecomeDriverUseCase>(() => _i27.BecomeDriverUseCase(
        authDriverBaseRepository: gh<_i22.AuthDriverBaseRepository>()));
    gh.singleton<_i28.DeleteDebitCardUseCase>(() => _i28.DeleteDebitCardUseCase(
        paymentBaseRepository: gh<_i11.PaymentBaseRepository>()));
    gh.singleton<_i29.DriverHomeBaseRemoteDataSource>(() =>
        _i29.DriverHomeRemoteDataSourceImpl(
            apiConsumer: gh<_i16.ApiConsumer>()));
    gh.singleton<_i30.DriverHomeBaseRepository>(
        () => _i31.DriverHomeRepositoryImpl(
              networkInfo: gh<_i9.NetworkInfo>(),
              driverHomeBaseRemoteDataSource:
                  gh<_i29.DriverHomeBaseRemoteDataSource>(),
            ));
    gh.singleton<_i32.ForgetPasswordCustomerUseCase>(() =>
        _i32.ForgetPasswordCustomerUseCase(
            authCustomerBaseRepository: gh<_i19.AuthCustomerBaseRepository>()));
    gh.singleton<_i33.GetDebitCardsUseCase>(() => _i33.GetDebitCardsUseCase(
        paymentBaseRepository: gh<_i11.PaymentBaseRepository>()));
    gh.singleton<_i34.GetOrdersUseCase>(() => _i34.GetOrdersUseCase(
        driverHomeBaseRepository: gh<_i30.DriverHomeBaseRepository>()));
    gh.singleton<_i35.HomeBaseRemoteDataSource>(
        () => _i35.HomeRemoteDataSource(apiConsumer: gh<_i16.ApiConsumer>()));
    gh.singleton<_i36.HomeBaseRepository>(() => _i37.HomeRepositoryImpl(
          networkInfo: gh<_i9.NetworkInfo>(),
          homeBaseRemoteDataSource: gh<_i35.HomeBaseRemoteDataSource>(),
        ));
    gh.singleton<_i38.HomeLaundryUseCase>(() => _i38.HomeLaundryUseCase(
        homeBaseRepository: gh<_i36.HomeBaseRepository>()));
    gh.factory<_i39.LaundryOrdersCubit>(
        () => _i39.LaundryOrdersCubit(gh<_i38.HomeLaundryUseCase>()));
    gh.singleton<_i40.LogInCustomerUseCase>(() => _i40.LogInCustomerUseCase(
        authCustomerBaseRepository: gh<_i19.AuthCustomerBaseRepository>()));
    gh.singleton<_i41.LogInDriverUseCase>(() => _i41.LogInDriverUseCase(
        authDriverBaseRepository: gh<_i22.AuthDriverBaseRepository>()));
    gh.singleton<_i42.LogInLaundryUseCase>(() => _i42.LogInLaundryUseCase(
        authLaundryBaseRepository: gh<_i25.AuthLaundryBaseRepository>()));
    gh.factory<_i43.PaymentCubit>(() => _i43.PaymentCubit(
          gh<_i15.AddDebitCardUseCase>(),
          gh<_i33.GetDebitCardsUseCase>(),
          gh<_i28.DeleteDebitCardUseCase>(),
        ));
    gh.singleton<_i44.RegisterCustomerUseCase>(() =>
        _i44.RegisterCustomerUseCase(
            authCustomerBaseRepository: gh<_i19.AuthCustomerBaseRepository>()));
    gh.singleton<_i45.WalletBaseRemoteDataSource>(
        () => _i45.WalletRemoteDataSource(apiConsumer: gh<_i16.ApiConsumer>()));
    gh.singleton<_i46.WalletBaseRepository>(() => _i47.WalletRepositoryImpl(
          networkInfo: gh<_i9.NetworkInfo>(),
          walletBaseRemoteDataSource: gh<_i45.WalletBaseRemoteDataSource>(),
        ));
    gh.singleton<_i48.WalletDriverBaseRemoteDataSource>(
        () => _i48.WalletRemoteDataSource(apiConsumer: gh<_i16.ApiConsumer>()));
    gh.singleton<_i49.WalletDriverBaseRepository>(
        () => _i50.WalletRepositoryImpl(
              networkInfo: gh<_i9.NetworkInfo>(),
              walletDriverBaseRemoteDataSource:
                  gh<_i48.WalletDriverBaseRemoteDataSource>(),
            ));
    gh.singleton<_i51.WalletDriverUseCase>(() => _i51.WalletDriverUseCase(
        walletDriverBaseRepository: gh<_i49.WalletDriverBaseRepository>()));
    gh.singleton<_i52.WalletLaundryUseCase>(() => _i52.WalletLaundryUseCase(
        walletBaseRepository: gh<_i46.WalletBaseRepository>()));
    gh.factory<_i53.BecomeDriverCubit>(
        () => _i53.BecomeDriverCubit(gh<_i27.BecomeDriverUseCase>()));
    gh.singleton<_i54.CheckOrderStatusDriverUseCase>(() =>
        _i54.CheckOrderStatusDriverUseCase(
            driverHomeBaseRepository: gh<_i30.DriverHomeBaseRepository>()));
    gh.singleton<_i55.CheckWaveDriverUseCase>(() => _i55.CheckWaveDriverUseCase(
        driverHomeBaseRepository: gh<_i30.DriverHomeBaseRepository>()));
    gh.singleton<_i56.CheckWaveLaundryUseCase>(() =>
        _i56.CheckWaveLaundryUseCase(
            homeBaseRepository: gh<_i36.HomeBaseRepository>()));
    gh.factory<_i57.GetOrdersCubit>(
        () => _i57.GetOrdersCubit(gh<_i34.GetOrdersUseCase>()));
    gh.factory<_i58.GetWalletCubit>(
        () => _i58.GetWalletCubit(gh<_i52.WalletLaundryUseCase>()));
    gh.factory<_i59.GetWalletDriverCubit>(
        () => _i59.GetWalletDriverCubit(gh<_i51.WalletDriverUseCase>()));
    gh.factory<_i60.LogInCubit>(() => _i60.LogInCubit(
          gh<_i41.LogInDriverUseCase>(),
          gh<_i14.SharedPreferencesUtils>(),
        ));
    gh.factory<_i61.LogInLaundCubit>(() => _i61.LogInLaundCubit(
          gh<_i42.LogInLaundryUseCase>(),
          gh<_i14.SharedPreferencesUtils>(),
        ));
    gh.factory<_i62.CheckOrderDriverCubit>(() =>
        _i62.CheckOrderDriverCubit(gh<_i54.CheckOrderStatusDriverUseCase>()));
    gh.factory<_i63.CheckWaveDriverCubit>(
        () => _i63.CheckWaveDriverCubit(gh<_i55.CheckWaveDriverUseCase>()));
    gh.factory<_i64.CheckWaveLaundryCubit>(
        () => _i64.CheckWaveLaundryCubit(gh<_i56.CheckWaveLaundryUseCase>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i65.ThirdPartyInjection {
  @override
  _i14.SharedPreferencesUtils get sharedPreferencesUtils =>
      _i14.SharedPreferencesUtils();
}
