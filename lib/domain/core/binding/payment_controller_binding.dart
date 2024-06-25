import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/payment_controller.dart';

class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentController>(() => PaymentController());
  }
}
