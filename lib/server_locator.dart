import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:local_notification/data/repo/notification/notification_repo_impl.dart';
import 'package:local_notification/data/source/notification/notification_local_data.dart';
import 'package:local_notification/domain/repo/notification/notification_repo.dart';
import 'package:local_notification/domain/usecase/init_notification_usecase.dart';
import 'package:local_notification/domain/usecase/show_notification_usecase.dart';

final GetIt sl = GetIt.instance;
Future<void> initDepnd() async {
  sl.registerSingleton<NotificationLocalData>(
      NotificationLocalData(FlutterLocalNotificationsPlugin()));
  sl.registerSingleton<NotificationRepo>(NotificationRepoImpl());
  sl.registerSingleton<InitNotificationUsecase>(InitNotificationUsecase());
  sl.registerSingleton<ShowNotificationUsecase>(ShowNotificationUsecase());
}
