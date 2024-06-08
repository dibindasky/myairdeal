import 'package:get/get.dart';
import 'package:myairdeal/application/controller/explore/explore_controller.dart';

class ExploreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExploreController>(() => ExploreController());
  }
}