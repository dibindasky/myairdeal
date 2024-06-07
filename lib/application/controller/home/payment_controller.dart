import 'package:get/get.dart';

class PaymentController extends GetxController {
  RxInt selectedPayementmethod = 0.obs;

  List<Map<String, String>> itemMap = [
    {"image": "", "heading": "*********5343", "subHeading": "Get IOS Discount"},
    {"image": "", "heading": "Paypal", "subHeading": "Get IOS Discount"},
  ];

  changePaymentMethod(int id) {
    selectedPayementmethod.value = id;
    update();
  }
}
