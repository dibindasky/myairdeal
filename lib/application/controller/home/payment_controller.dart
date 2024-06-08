import 'package:get/get.dart';

class PaymentController extends GetxController {
  RxInt selectedPayementmethod = 0.obs;

  List<Map<String, String>> itemMap = [
    {
      "image": "asset/icon/payemt_number_icon.png",
      "title": "*********5343",
      "subtitle": "Get IOS Discount"
    },
    {
      "image": "asset/icon/payment_paypal_icon.png",
      "title": "Paypal",
      "subtitle": "Get IOS Discount"
    },
  ];

  changePaymentMethod(int id) {
    selectedPayementmethod.value = id;
    update();
  }
}
