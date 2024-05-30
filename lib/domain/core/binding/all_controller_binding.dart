import 'package:get/get.dart';
import 'package:myairdeal/application/controller/navbar_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavBarController());
  }
}
