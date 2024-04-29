import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/core/utils/shared_preference_utils.dart';
import 'package:laundry_app/features/customer/auth/presentation/screens/forget_password_customer_screen.dart';
import 'package:laundry_app/features/customer/auth/presentation/screens/log_in_customer_screen.dart';
import 'package:laundry_app/features/customer/auth/presentation/screens/sign_up_customer_screen.dart';
import 'package:laundry_app/features/customer/home/presentation/screens/home_customer_screen.dart';
import 'package:laundry_app/features/customer/payment/presentation/controllers/cubit/payment_cubit.dart';
import 'package:laundry_app/features/customer/payment/presentation/screens/add_new_card_screen.dart';
import 'package:laundry_app/features/customer/payment/presentation/screens/card_screen.dart';
import 'package:laundry_app/features/customer/setting/presentation/screens/account_details_screen.dart';
import 'package:laundry_app/features/customer/setting/presentation/screens/setting_screen.dart';
import 'package:laundry_app/features/driver/auth/presentation/screens/apply_becoming_driver_screen.dart';
import 'package:laundry_app/features/driver/auth/presentation/screens/forget_password_screen.dart';
import 'package:laundry_app/features/driver/auth/presentation/screens/log_in_driver_screen.dart';
import 'package:laundry_app/features/driver/home/presentation/screens/accomplishment_screen.dart';
import 'package:laundry_app/features/driver/home/presentation/screens/home_driver_screen.dart';
import 'package:laundry_app/features/customer/map/presentation/screens/map_screen.dart';
import 'package:laundry_app/features/laundry/auth/presentation/controllers/cubit/log_in_laundry_cubit.dart';
import 'package:laundry_app/features/laundry/auth/presentation/screens/log_in_screen.dart';
import 'package:laundry_app/features/laundry/home/presentation/controllers/cubit/laundry_orders_cubit.dart';
import 'package:laundry_app/features/laundry/home/presentation/screens/home_screen.dart';
import 'package:laundry_app/features/laundry/wallet/presentation/controllers/cubit/get_wallet_cubit.dart';
import 'package:laundry_app/features/laundry/wallet/presentation/screens/earning_screen.dart';
import 'package:laundry_app/injection.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: RouterConstants.driverHomeScreen,
    routes: [
      GoRoute(
        path: RouterConstants.loginLaundryScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<LogInLaundCubit>(),
          child: LogInScreen(),
        ),
      ),
      GoRoute(
        path: '${RouterConstants.homeLaundryScreen}/:laundryId',
        builder: (context, state) {
          final laundryId = state.pathParameters['laundryId']!;
          return BlocProvider(
            create: (context) => getIt<LaundryOrdersCubit>(),
            child: HomeLaundryScreen(laundryId: laundryId),
          );
        },
      ),

      GoRoute(
          path: '${RouterConstants.earningScreen}/:laundryId',
          builder: (context, state) {
            final laundryId = state.pathParameters['laundryId']!;
            return BlocProvider(
              create: (context) => getIt<GetWalletCubit>(),
              child: EarningScreen(
                laundryId: laundryId,
              ),
            );
          }),
      GoRoute(
        path: RouterConstants.forgetPasswordDriverScreen,
        builder: (context, state) => const ForgetPasswordDriverScreen(),
      ),
      GoRoute(
        path: RouterConstants.logInDriverScreen,
        builder: (context, state) => const LogInDriverScreen(),
      ),
      GoRoute(
        path: RouterConstants.applyBecomingDriverScreen,
        builder: (context, state) => const ApplyBecomingDriverScreen(),
      ),
      GoRoute(
        path: RouterConstants.logInCustomerScreen,
        builder: (context, state) => const LogInCustomerScreen(),
      ),
      GoRoute(
        path: RouterConstants.signUpCustomerScreen,
        builder: (context, state) => const SignUpCustomerScreen(),
      ),
      GoRoute(
        path: RouterConstants.driverHomeScreen,
        builder: (context, state) => const HomeDriverScreen(),
      ),
      // GoRoute(
      //   path: RouterConstants.setLocationScreen,
      //   builder: (context, state) => const SetLocationScreen(),
      // ),
      GoRoute(
        path: RouterConstants.accomplishmentsScreen,
        builder: (context, state) => const AccomplishmentScreen(),
      ),
      GoRoute(
        path: RouterConstants.customerHomeScreen,
        builder: (context, state) => const HomeCustomerScreen(),
      ),
      GoRoute(
        path: RouterConstants.settingScreen,
        builder: (context, state) => const SettingScreen(),
      ),
      GoRoute(
        path: RouterConstants.accountDetailsScreen,
        builder: (context, state) => const AccountDetailsScreen(),
      ),
      GoRoute(
        path: RouterConstants.forgetPasswordCustomerScreen,
        builder: (context, state) => const ForgetPasswordCustomerScreen(),
      ),
      GoRoute(
        path: RouterConstants.addNewCardScreen,
        builder: (context, state) => BlocProvider(
          create: (_) => getIt<PaymentCubit>(),
          child: AddNewCardScreen(),
        ),
      ),
      GoRoute(
        path: RouterConstants.cardScreen,
        builder: (context, state) => const CardScreen(),
      ),
    ],
  );
}
