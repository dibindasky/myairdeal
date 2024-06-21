import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/data/secure_storage/secure_storage.dart';
import 'package:myairdeal/domain/models/auth/login_model/login_model.dart';
import 'package:myairdeal/domain/models/auth/otp_verify_model/otp_verify_model.dart';
import 'package:myairdeal/domain/models/token/token_model.dart';
import 'package:myairdeal/domain/repository/service/auth_repo.dart';

@injectable
class AuthController extends GetxController {
  AuthController(this.authRepo);

  AuthRepo authRepo;

  RxBool isLoading = false.obs;
  bool hasError = false;
  bool isOtpSent = false;
  bool isOtpVerfied = false;

  TextEditingController loginNumber = TextEditingController();
  TextEditingController otpNumber = TextEditingController();
  RxInt genderType = 0.obs;
  RxList genderList = ['Mr', 'Mrs', 'Ms'].obs;
  RegExp phoneNumberRegExp = RegExp(r'^[0-9]+$');

  phoneNumber(int phonenumber) {
    loginNumber.text = phonenumber.toString();
    update();
  }

  void changeGenderType(int index) {
    genderType.value = index;
  }

  Future<void> skipOnBoard() async {
    await SecureStorage.setOnBoard();
  }

  Future<void> whereToGo() async {
    final isLogin = await SecureStorage.getLogin();
    final onBoard = await SecureStorage.getOnBoard();
    if (!onBoard) {
      Get.toNamed(Routes.onboard);
    } else if (!isLogin) {
      Get.toNamed(Routes.signUp);
    } else if (onBoard && isLogin) {
      Get.offAndToNamed(Routes.bottomBar);
    }
  }

  Future<void> otpSent() async {
    isLoading.value = true;
    hasError = false;
    isOtpSent = false;

    String trimmedNumber = loginNumber.text.trim();
    String replaceWhiteSpace = trimmedNumber.replaceAll(' ', '');

    final data = await authRepo.sendOTP(
      loginModel: LoginModel(mobileNumber: replaceWhiteSpace),
    );

    data.fold((failure) {
      isLoading.value = false;
      hasError = true;
      isOtpSent = false;
      Get.snackbar('Failed', 'OTP Sending Failed', backgroundColor: kRed);
    }, (success) {
      isLoading.value = false;
      hasError = false;
      isOtpSent = true;
      Get.offAllNamed(Routes.otp);
      Get.snackbar('Success', 'OTP Sending Success',
          backgroundColor: kBluePrimary);
    });
  }

  Future<void> verifyOTP() async {
    isLoading.value = true;
    hasError = false;
    isOtpVerfied = false;
    String trimmedNumber = loginNumber.text.trim();
    String replaceWhiteSpace = trimmedNumber.replaceAll(' ', '');
    log(otpNumber.text);
    log(replaceWhiteSpace);
    final data = await authRepo.verifyOTP(
        otpVerifyModel: OtpVerifyModel(
      phone: replaceWhiteSpace,
      otp: otpNumber.text,
    ));
    data.fold((l) {
      isLoading.value = false;
      hasError = true;
      isOtpVerfied = false;
      Get.snackbar('Failed', 'OTP Verify Failed', backgroundColor: kRed);
    }, (r) async {
      await SecureStorage.saveToken(tokenModel: TokenModel(token: r.token));
      isLoading.value = false;
      hasError = false;
      isOtpVerfied = true;
      Get.offAllNamed(Routes.bottomBar);
      Get.snackbar('Success', 'OTP Verify Success',
          backgroundColor: kBluePrimary);
      await SecureStorage.setLogin();
    });
  }

  void logOut() async {
    Get.snackbar('Success', 'Logout success');
    Get.offAndToNamed(Routes.signUp);
    otpNumber.clear();
    isOtpSent = false;
    isOtpVerfied = false;
    loginNumber.clear();
    await SecureStorage.clearLogin();
  }
}
