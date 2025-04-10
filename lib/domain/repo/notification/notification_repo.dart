import 'package:flutter/cupertino.dart';

abstract class NotificationRepo {
  Future<void> initialize();
  Future<void> showNotification(String title, String body, String payload);
}
