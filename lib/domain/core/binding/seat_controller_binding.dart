import 'package:get/get.dart';
import 'package:myairdeal/application/controller/seat/seat_controller.dart';

class SeatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SeatController>(() => SeatController());
  }
}
