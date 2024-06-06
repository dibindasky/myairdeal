import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController loginNumber = TextEditingController();
  TextEditingController otpNumber = TextEditingController();
  phoneNumber(int phonenumber) {
    loginNumber.text = phonenumber.toString();
    update();
  }
}
