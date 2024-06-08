import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';

class FlightSortBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FlightSortController>(() => FlightSortController());
  }
}