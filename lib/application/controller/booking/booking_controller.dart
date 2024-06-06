import 'package:get/get.dart';

class BookingController extends GetxController {
  RxInt selectedBookingTab = 0.obs;
  changeTab(int index) {
    selectedBookingTab.value = index;
    update();
  }
}
