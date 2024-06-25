import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';

class TravellerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TravellerController>(() => TravellerController());
  }
}
