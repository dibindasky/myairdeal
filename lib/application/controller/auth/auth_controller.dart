import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController loginNumber = TextEditingController();
  TextEditingController otpNumber = TextEditingController();
  RxInt genderType = 0.obs;
  RxList genderList = ['Mr', 'Mrs', 'Ms'].obs;
  phoneNumber(int phonenumber) {
    loginNumber.text = phonenumber.toString();
    update();
  }

  void changeGenderType(int index) {
    genderType.value = index;
  }
}
