import 'package:flutter/cupertino.dart';
import 'package:local_notification/domain/repo/notification/notification_repo.dart';
import 'package:local_notification/server_locator.dart';

class InitNotificationUsecase {
  Future call() async {
    await sl<NotificationRepo>().initialize();
  }
}
