import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/validators/validators.dart';
import 'package:myairdeal/data/secure_storage/secure_storage.dart';
import 'package:myairdeal/data/service/auth/auth_service.dart';
import 'package:myairdeal/domain/models/auth/login_model/country.dart';
import 'package:myairdeal/domain/models/auth/login_model/login_model.dart';
import 'package:myairdeal/domain/models/auth/otp_verify_model/otp_verify_model.dart';
import 'package:myairdeal/domain/models/auth/user_creation_model/user_creation_model.dart';
import 'package:myairdeal/domain/models/auth/user_creation_responce_model/user_creation_responce_model.dart';
import 'package:myairdeal/domain/models/token/token_model.dart';
import 'package:myairdeal/domain/repository/service/auth_repo.dart';

class AuthController extends GetxController {
  AuthRepo authRepo = AuthService();

  bool isLoading = false;
  bool hasError = false;
  RxBool loginOrNot = false.obs;

  TextEditingController loginNumber = TextEditingController();
  TextEditingController otpNumber = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  final RxString? dialCode = ''.obs;
  final RxString? countryCode = ''.obs;
  final RxString? countryName = ''.obs;
  RxInt genderType = 0.obs;
  RxList genderList = ['Mr', 'Mrs', 'Ms'].obs;
  RxInt maxLength = 10.obs;
  RxInt maxOTPLength = 4.obs;
  Rx<UserCreationResponceModel> userCreationResponceModel =
      UserCreationResponceModel().obs;

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

  // String getCountryName(String countryCode) {
  //   return countryCodes[countryCode.toUpperCase()] ?? 'Unknown country';
  // }

  Future<void> logOrNot() async {
    loginOrNot.value = await SecureStorage.getLogin();
  }

  Future<void> otpSent() async {
    isLoading = true;
    hasError = false;
    update();
    String trimmedNumber = loginNumber.text.trim();
    String replaceWhiteSpace = trimmedNumber.replaceAll(' ', '');
    final data = await authRepo.sendOTP(
      loginModel: LoginModel(
        mobileNumber: replaceWhiteSpace,
        country: Country(
            dialCode: dialCode?.value,
            countryCode: countryCode?.value,
            countryName: countryName?.value),
      ),
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
      Get.offNamed(Routes.alMostDone);
      Get.snackbar('Success', 'OTP Verify Success',
          backgroundColor: kBluePrimary);
      await SecureStorage.setLogin();
    });
  }

  void userCreation() async {
    isLoading = true;
    update();
    if (!isValidEmail(email.text)) {
      Get.showSnackbar(const GetSnackBar(
        message: 'Email is not valid',
      ));
      return;
    }

    if (firstName.text.isEmpty || firstName.text.length <= 2) {
      Get.showSnackbar(const GetSnackBar(
        message: 'First name must have 3 letters is not valid',
      ));
      return;
    }

    final data = await authRepo.userCreation(
        userCreationModel: UserCreationModel(
            email: email.text,
            firstName: firstName.text,
            lastName: lastName.text,
            country: Country(countryCode: '', countryName: '', dialCode: '')));
    data.fold(
      (l) {
        Get.snackbar('Failed', errorMessage, backgroundColor: kRed);
        isLoading = false;
      },
      (r) {
        Get.snackbar('Success', 'User details added',
            backgroundColor: kBluePrimary);
        getUserInfo();
        Get.offAllNamed(Routes.bottomBar);
        update();
      },
    );
  }

  void getUserInfo() async {
    isLoading = true;
    update();
    final data = await authRepo.getUser();
    data.fold(
      (l) {
        Get.snackbar('Failed', errorMessage, backgroundColor: kRed);
        isLoading = false;
      },
      (r) {
        isLoading = false;
        userCreationResponceModel.value = r;
        update();
      },
    );
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
