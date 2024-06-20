import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/payment_controller.dart';

class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentController>(() => PaymentController());
  }
}
