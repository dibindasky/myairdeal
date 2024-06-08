import 'package:get/get.dart';
import 'package:myairdeal/application/controller/talkto_us/talk_to_us_controller.dart';

class TalkToUsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TalkToUsController>(() => TalkToUsController());
  }
}
