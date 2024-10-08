import 'dart:developer';

import 'package:get/get.dart';
import 'package:myairdeal/data/service/notification/notification_service.dart';
import 'package:myairdeal/domain/models/notification_model/notification.dart';
import 'package:myairdeal/domain/models/page_query/page_query.dart';
import 'package:myairdeal/domain/repository/service/notification_repo.dart';

class NotificationController extends GetxController {
  NotificationRepo notificationService = NotificationService();
  List<String> notificationType = ['All', 'Unread', 'Read'];
  int nextNotification = 1;
  // responsible for changeing notification type
  RxInt notificationIndex = 0.obs;
  RxBool notificationLoading = false.obs;
  RxBool notificationNext = false.obs;

  // For Notification Listing
  RxList<Notification>? notification = <Notification>[].obs;

  // For filteration
  RxList<Notification>? notificationList = <Notification>[].obs;

  void changeNotificationType(int value) {
    notificationIndex.value = value;
    changeNotifcationDate();
  }

  void changeNotifcationDate() {
    if (notificationIndex.value == 0) {
      notificationList = (notification ?? <Notification>[]).obs;
      update();
    } else if (notificationIndex.value == 1) {
      notificationList = ((notification ?? <Notification>[])
              .where((e) => e.status == false)
              .toList())
          .obs;
      update();
    } else {
      notificationList = ((notification ?? <Notification>[])
              .where((e) => e.status == true)
              .toList())
          .obs;
      update();
    }
  }

  // Notification Get All
  void getNotification() async {
    notificationLoading.value = true;
    update();
    final data = await notificationService.getNotification(
        pageQuery: PageQuery(pageSize: 15));
    data.fold(
      (l) => null,
      (r) {
        notification?.value = r.notification ?? <Notification>[];
        changeNotifcationDate();
      },
    );
    notificationLoading.value = false;
  }

  void getNotificationNext() async {
    notificationNext.value = true;

    update();
    final data = await notificationService.getNotificationNext(
        pageQuery: PageQuery(pageSize: nextNotification += 10));
    data.fold(
      (l) => null,
      (r) {
        notification?.value = [...r.notification ?? <Notification>[]];
        log('length ${r.notification?.length}');
        changeNotifcationDate();
        update();
      },
    );
    notificationNext.value = false;
  }
}
