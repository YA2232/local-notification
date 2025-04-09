abstract class NotificationRepo {
  Future<void> initialize();
  Future<void> showNotification(String title, String body);
}
