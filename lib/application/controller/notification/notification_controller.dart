import 'package:get/get.dart';
import 'package:myairdeal/data/service/notification/notification_service.dart';
import 'package:myairdeal/domain/models/notification_model/notification.dart';
import 'package:myairdeal/domain/models/notification_model/notification_model.dart';
import 'package:myairdeal/domain/models/page_query/page_query.dart';
import 'package:myairdeal/domain/repository/service/notification_repo.dart';

class NotificationController extends GetxController {
  NotificationRepo notificationService = NotificationService();
  List<String> notificationType = ['All', 'Unread', 'Read'];
  int nextNotification = 0;
  // responsible for changeing notification type
  RxInt notificationIndex = 0.obs;
  RxBool notificationLoading = false.obs;
  RxBool notificstionNext = false.obs;

  // For Notification Listing
  Rx<NotificationModel> notification = NotificationModel().obs;

  void changeNotificationType(int value) {
    notificationIndex.value = value;
    if (notificationIndex.value == 0) {
      notificationList =
          (notification.value.notification ?? <Notification>[]).obs;
      update();
    } else if (notificationIndex.value == 1) {
      notificationList = ((notification.value.notification ?? <Notification>[])
              .where((e) => e.status == false)
              .toList())
          .obs;
      update();
    } else {
      notificationList = ((notification.value.notification ?? <Notification>[])
              .where((e) => e.status == true)
              .toList())
          .obs;
      update();
    }
  }

  RxList<Notification>? notificationList = <Notification>[].obs;

  // Notification Get All
  void getNotification() async {
    notificationLoading.value = true;
    final data = await notificationService.getNotification();
    data.fold(
      (l) {
        notificationLoading.value = false;
      },
      (r) {
        notification.value = r;
        notificationLoading.value = false;
      },
    );
  }

  void getNotificationNext() async {
    notificationLoading.value = true;
    nextNotification++;
    final data = await notificationService.getNotificationNext(
        pageQuery: PageQuery(
      pageSize: nextNotification += nextNotification,
    ));
    data.fold(
      (l) {
        notificationLoading.value = false;
      },
      (r) {
        notification.value = r;
        notificationList?.value = r.notification ?? [];
        notificationLoading.value = false;
      },
    );
  }
}
