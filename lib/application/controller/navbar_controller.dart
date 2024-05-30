import 'package:get/get.dart';

class NavBarController extends GetxController {
  
  RxInt bottomIndex = 0.obs;

  void chageIndex(int index) {
    bottomIndex.value = index;
  }
}
