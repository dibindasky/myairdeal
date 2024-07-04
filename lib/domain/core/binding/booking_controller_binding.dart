import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';

class BookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BookingController>(BookingController(), permanent: true);
  }
}
