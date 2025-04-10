import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:local_notification/core/helper/app_router.dart';

class NotificationLocalData {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  NotificationLocalData(this.flutterLocalNotificationsPlugin);

  Future<void> initialize() async {
    const AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const InitializationSettings initializationSettings =
        InitializationSettings(android: androidInitializationSettings);
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        final paylod = response.payload;
        AppRouter.goRouter.push(
          "/details",
          extra: paylod,
        );
      },
    );
  }

  Future<void> showNotification(
      String title, String body, String payload) async {
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails('channel_id', 'Channel Name',
            importance: Importance.max,
            priority: Priority.high,
            icon: '@mipmap/ic_launcher',
            channelDescription: "channelDescription");
    const NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);
    await flutterLocalNotificationsPlugin
        .show(1, title, body, notificationDetails, payload: payload);
  }
}
