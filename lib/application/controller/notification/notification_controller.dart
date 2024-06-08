import 'package:get/get.dart';

class NotificationController extends GetxController {
  List<String> notificationType = ['All', 'Unread', 'Read'];
  // responsible for changeing notification type
  RxInt notificationIndex = 0.obs;

  void changeNotificationType(int value) {
    notificationIndex.value = value;
  }
}
