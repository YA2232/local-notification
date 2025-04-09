import 'package:flutter/material.dart';
import 'package:local_notification/data/model/notification_params.dart';
import 'package:local_notification/domain/usecase/show_notification_usecase.dart';
import 'package:local_notification/server_locator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              sl<ShowNotificationUsecase>().call(
                  NotificationParams(title: "Youssef", body: "I am here"));
            },
            child: Text("send")),
      ),
    );
  }
}
