import 'package:flutter/cupertino.dart';
import 'package:local_notification/data/source/notification/notification_local_data.dart';
import 'package:local_notification/domain/repo/notification/notification_repo.dart';
import 'package:local_notification/server_locator.dart';

class NotificationRepoImpl extends NotificationRepo {
  @override
  Future<void> initialize() async {
    await sl<NotificationLocalData>().initialize();
  }

  @override
  Future<void> showNotification(
      String title, String body, String payload) async {
    await sl<NotificationLocalData>().showNotification(title, body, payload);
  }
}
