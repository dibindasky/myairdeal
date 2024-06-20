import 'package:get/get.dart';
import 'package:myairdeal/application/controller/navbar/navbar_controller.dart';

class NavBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavBarController>(() => NavBarController());
  }
}
