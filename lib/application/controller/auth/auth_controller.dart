import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/data/secure_storage/secure_storage.dart';
import 'package:myairdeal/data/service/auth/auth_service.dart';
import 'package:myairdeal/domain/models/auth/login_model/login_model.dart';
import 'package:myairdeal/domain/models/auth/otp_verify_model/otp_verify_model.dart';
import 'package:myairdeal/domain/models/token/token_model.dart';
import 'package:myairdeal/domain/repository/service/auth_repo.dart';

class AuthController extends GetxController {
  AuthRepo authRepo = AuthService();

  bool isLoading = false;
  bool hasError = false;
  RxBool loginOrNot = false.obs;

  TextEditingController loginNumber = TextEditingController();
  TextEditingController otpNumber = TextEditingController();
  RxInt genderType = 0.obs;
  RxList genderList = ['Mr', 'Mrs', 'Ms'].obs;
  RxInt maxLength = 10.obs;
  RxInt maxOTPLength = 4.obs;

  @override
  void onInit() {
    super.onInit();
    otpNumber.addListener(_checkOTPNumberLength);
    loginNumber.addListener(_checkPhoneNumberLength);
  }

  @override
  void onClose() {
    otpNumber.removeListener(_checkOTPNumberLength);
    loginNumber.removeListener(_checkPhoneNumberLength);
    super.onClose();
  }

  void _checkPhoneNumberLength() {
    update();
  }

  void _checkOTPNumberLength() {
    update();
  }

  void updateMaxLength(String countryCode) {
    maxLength.value = countryMaxLengths[countryCode] ?? 10;
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
    isLoading = true;
    hasError = false;

    update();
    String trimmedNumber = loginNumber.text.trim();
    String replaceWhiteSpace = trimmedNumber.replaceAll(' ', '');
    final data = await authRepo.sendOTP(
      loginModel: LoginModel(mobileNumber: replaceWhiteSpace),
    );
    data.fold((failure) {
      isLoading = false;
      hasError = true;

      update();
      Get.snackbar('Failed', 'OTP Sending Failed', backgroundColor: kRed);
    }, (success) {
      isLoading = false;
      hasError = false;
      Get.snackbar('Success', 'OTP Sending Success',
          backgroundColor: kBluePrimary);
      Get.toNamed(Routes.otp);
    });
  }

  Future<void> verifyOTP() async {
    isLoading = true;
    hasError = false;

    update();
    String trimmedNumber = loginNumber.text.trim();
    String replaceWhiteSpace = trimmedNumber.replaceAll(' ', '');
    final data = await authRepo.verifyOTP(
        otpVerifyModel: OtpVerifyModel(
      phone: replaceWhiteSpace,
      otp: otpNumber.text,
    ));
    data.fold((l) {
      isLoading = false;
      hasError = true;
      update();
      Get.snackbar('Failed', 'OTP Verify Failed', backgroundColor: kRed);
    }, (r) async {
      await SecureStorage.saveToken(tokenModel: TokenModel(token: r.token));
      isLoading = false;
      hasError = false;
      loginOrNot.value = true;
      update();
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
    loginOrNot.value = false;
    loginNumber.clear();
    update();
    await SecureStorage.clearLogin();
    await SecureStorage.setOnBoard();
  }
}
