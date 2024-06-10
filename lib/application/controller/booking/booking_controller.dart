import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';

class BookingController extends GetxController {
  RxInt selectedBookingTab = 1.obs;
  RxInt selectedYouCouldAlsoTab = 6.obs;
  RxInt selectedcontactUsradioButton = 6.obs;
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  String? fileName;
  final descriptionController = TextEditingController();
  String? selectedProduct;

  List<String> contactusRadioItems = [
    '1. New Complaint',
    '2. Unresolved Complaint',
    '3. Write to management',
  ];
  List<String> dropDwnDatas = ['Product 1', 'Product 2', 'Product 3'];
  changeTab(int index) {
    selectedBookingTab.value = index;
    update();
  }

  changeSelectedYouCouldAlsoTab(int selectedNewTab) {
    if (selectedNewTab == 2) {
      Get.toNamed(Routes.chatPage);
    } else if (selectedNewTab == 3) {
      Get.toNamed(Routes.refundsPage);
    }
    selectedYouCouldAlsoTab.value = selectedNewTab;
    update();
  }

  changeContactUsRadioButton(int index) {
    selectedcontactUsradioButton.value = index;
    update();
  }

  updateProduct(String newValue) {
    selectedProduct = newValue;
    update();
  }
}
