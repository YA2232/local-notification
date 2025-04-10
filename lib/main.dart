import 'package:flutter/material.dart';
import 'package:local_notification/core/helper/app_router.dart';
import 'package:local_notification/domain/usecase/init_notification_usecase.dart';
import 'package:local_notification/server_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDepnd();
  initNotification();
  runApp(const MyApp());
}

void initNotification() {
  sl<InitNotificationUsecase>().call();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.goRouter,
    );
  }
}
