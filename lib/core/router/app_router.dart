import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/features/laundry/auth/presentation/screens/log_in_screen.dart';
import 'package:laundry_app/features/laundry/home/presentation/screens/home_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: RouterConstants.loginLaundryScreen,
    routes: [
      GoRoute(
        path: RouterConstants.loginLaundryScreen,
        builder: (context, state) => const LogInScreen(),
      ),
      GoRoute(
        path: RouterConstants.homeLaundryScreen,
        builder: (context, state) => const HomeLaundryScreen(),
      ),
    ],
  );
}
