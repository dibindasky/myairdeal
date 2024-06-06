import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/explore/explore_controller.dart';
import 'package:myairdeal/application/controller/sorting/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/controller/navbar/navbar_controller.dart';
import 'package:myairdeal/application/controller/traveller/traveler_controller.dart';

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
