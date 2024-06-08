import 'package:get/get.dart';

class BookingController extends GetxController {
  RxInt selectedBookingTab = 1.obs;
  RxInt selectedYouCouldAlsoTab = 0.obs;
  RxInt selectedcontactUsradioButton = 0.obs;
  List<String> contactusRadioItems = [
    '1. New Complaint',
    '2. Unresolved Complaint',
    '3. Write to management',
  ];
  changeTab(int index) {
    selectedBookingTab.value = index;
    update();
  }

  changeSelectedYouCouldAlsoTab(int selectedNewTab) {
    selectedYouCouldAlsoTab.value = selectedNewTab;
    update();
  }

  changeContactUsRadioButton(int index) {
    selectedcontactUsradioButton.value = index;
    update();
  }
}
