import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laundry_app/bloc_observer.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/router/app_router.dart';
import 'package:laundry_app/core/utils/shared_preference_utils.dart';
import 'package:laundry_app/injection.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();
  await configureDependencies();
  runApp(DevicePreview(enabled: false, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (context) => CupertinoApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Laundry App',
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
