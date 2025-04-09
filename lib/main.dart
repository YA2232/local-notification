import 'package:flutter/material.dart';
import 'package:local_notification/domain/usecase/init_notification_usecase.dart';
import 'package:local_notification/presentation/home/screens/home_screen.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const HomeScreen(),
    );
  }
}
