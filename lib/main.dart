import 'package:flutter/cupertino.dart';
import 'package:laundry_app/core/router/app_router.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Laundry App',
      routerConfig: AppRouter.router,
    );
  }
}
