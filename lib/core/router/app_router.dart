import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/features/customer/auth/presentation/screens/log_in_customer_screen.dart';
import 'package:laundry_app/features/customer/auth/presentation/screens/sign_up_customer_screen.dart';
import 'package:laundry_app/features/customer/home/presentation/screens/home_customer_screen.dart';
import 'package:laundry_app/features/driver/auth/presentation/screens/apply_becoming_driver_screen.dart';
import 'package:laundry_app/features/driver/auth/presentation/screens/forget_password_screen.dart';
import 'package:laundry_app/features/driver/auth/presentation/screens/log_in_driver_screen.dart';
import 'package:laundry_app/features/driver/home/presentation/screens/accomplishment_screen.dart';
import 'package:laundry_app/features/driver/home/presentation/screens/home_driver_screen.dart';
import 'package:laundry_app/features/customer/map/presentation/screens/map_screen.dart';
import 'package:laundry_app/features/laundry/auth/presentation/screens/log_in_screen.dart';
import 'package:laundry_app/features/laundry/home/presentation/screens/home_screen.dart';
import 'package:laundry_app/features/laundry/wallet/presentation/screens/earning_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: RouterConstants.customerHomeScreen,
    routes: [
      GoRoute(
        path: RouterConstants.loginLaundryScreen,
        builder: (context, state) => const LogInScreen(),
      ),
      GoRoute(
        path: RouterConstants.homeLaundryScreen,
        builder: (context, state) => const HomeLaundryScreen(),
      ),
      GoRoute(
        path: RouterConstants.earningScreen,
        builder: (context, state) => const EarningScreen(),
      ),
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
      GoRoute(
        path: RouterConstants.setLocationScreen,
        builder: (context, state) => const SetLocationScreen(),
      ),
      GoRoute(
        path: RouterConstants.accomplishmentsScreen,
        builder: (context, state) => const AccomplishmentScreen(),
      ),
      GoRoute(
        path: RouterConstants.customerHomeScreen,
        builder: (context, state) => const HomeCustomerScreen(),
      ),
    ],
  );
}
