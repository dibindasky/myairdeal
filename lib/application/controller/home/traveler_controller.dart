import 'package:get/get.dart';

class TravellerController extends GetxController {
  RxInt genderType = 0.obs;
  RxList genderList = ['Mr', 'Mrs', 'Ms'].obs;
  void changeGenderType(int index) {
    genderType.value = index;
  }
}
