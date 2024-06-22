import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/traveler_controller.dart';

class TravellerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TravellerController>(() => TravellerController());
  }
}
