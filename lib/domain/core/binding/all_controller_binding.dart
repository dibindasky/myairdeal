import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking_controller.dart';
import 'package:myairdeal/application/controller/explore_controller.dart';
import 'package:myairdeal/application/controller/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/auth_controller.dart';
import 'package:myairdeal/application/controller/navbar_controller.dart';
import 'package:myairdeal/application/controller/traveler_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavBarController());
    Get.lazyPut(() => FlightSortController());
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => ExpolreController());
    Get.lazyPut(() => BookingController());
    Get.lazyPut(() => TravelerController());
  }
}
