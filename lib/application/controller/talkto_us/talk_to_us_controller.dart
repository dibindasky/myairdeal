import 'package:get/get.dart';

class TalkToUsController extends GetxController {
  RxInt selectedtab = 1.obs;
  changetab(int newTab) {
    selectedtab.value = newTab;
    update();
  }
}
