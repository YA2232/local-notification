import 'package:local_notification/core/usecase/usecase.dart';
import 'package:local_notification/data/model/notification_params.dart';
import 'package:local_notification/domain/repo/notification/notification_repo.dart';
import 'package:local_notification/server_locator.dart';

class ShowNotificationUsecase extends Usecase<void, NotificationParams> {
  @override
  Future<void> call(params) async {
    await sl<NotificationRepo>().showNotification(params.title, params.body);
  }
}
