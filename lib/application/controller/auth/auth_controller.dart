import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
import 'package:myairdeal/domain/models/auth/profile_update_model/profile_update_model.dart';
import 'package:myairdeal/domain/models/auth/user_creation_model/user_creation_model.dart';
import 'package:myairdeal/domain/models/auth/user_creation_responce_model/user_creation_responce_model.dart';
import 'package:myairdeal/domain/models/token/token_model.dart';
import 'package:myairdeal/domain/repository/service/auth_repo.dart';

class AuthController extends GetxController {
  AuthRepo authRepo = AuthService();

  RxBool isLoading = false.obs;
  bool hasError = false;
  RxBool loginOrNot = false.obs;

  TextEditingController loginNumber = TextEditingController();
  TextEditingController otpNumber = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController updateFirnameController = TextEditingController();
  TextEditingController updateLastNameController = TextEditingController();
  TextEditingController updateEmailController = TextEditingController();
  TextEditingController updatecountryNameController = TextEditingController();
  TextEditingController updatecountryCodeController = TextEditingController();
  TextEditingController updatedailCodeController = TextEditingController();

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

  Future<void> logOrNot() async {
    loginOrNot.value = await SecureStorage.getLogin();
    update();
  }

  Future<void> otpSent() async {
    String trimmedNumber = loginNumber.text.trim();
    String replaceWhiteSpace = trimmedNumber.replaceAll(' ', '');
    isLoading.value = true;
    hasError = false;
    update();
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
      isLoading.value = false;
      hasError = true;
      update();
      Get.snackbar('Failed', 'OTP Sending Failed', backgroundColor: kRed);
    }, (success) {
      isLoading.value = false;
      hasError = false;
      Get.snackbar('Success', 'OTP Sending Success',
          backgroundColor: kBluePrimary);
      Get.toNamed(Routes.otp);
      update();
    });
  }

  Future<void> verifyOTP() async {
    String trimmedNumber = loginNumber.text.trim();
    String replaceWhiteSpace = trimmedNumber.replaceAll(' ', '');
    isLoading.value = true;
    hasError = false;
    update();
    final data = await authRepo.verifyOTP(
        otpVerifyModel: OtpVerifyModel(
      phone: replaceWhiteSpace,
      otp: otpNumber.text,
    ));
    data.fold((l) {
      isLoading.value = false;
      hasError = true;
      update();
      Get.snackbar('Failed', 'OTP Verify Failed', backgroundColor: kRed);
    }, (r) async {
      await SecureStorage.saveToken(
        tokenModel: TokenModel(token: r.token ?? ''),
      );
      log('getx verify token recponce value >> ;  ${r.toJson()}');
      isLoading.value = false;
      hasError = false;
      loginOrNot.value = true;
      update();
      Get.snackbar('Success', 'OTP Verify Success',
          backgroundColor: kBluePrimary);
      await SecureStorage.setLogin();
      if (r.profile == false) {
        Get.offAllNamed(Routes.alMostDone);
      } else {
        Get.offAllNamed(Routes.bottomBar);
      }
    });
  }

  void userCreation() async {
    update();
    if (email.text.isEmpty || firstName.text.isEmpty || lastName.text.isEmpty) {
      Get.snackbar('Failed', 'Fields is Empty', backgroundColor: kRed);
    }
    if (firstName.text.isEmpty || firstName.text.length <= 2) {
      Get.snackbar('Failed', 'First Name must have 3 letters',
          backgroundColor: kRed);
      return;
    }
    if (!isValidEmail(email.text)) {
      Get.snackbar('Failed', 'Email is not valid', backgroundColor: kRed);
      return;
    }

    isLoading.value = true;

    final data = await authRepo.userCreation(
      userCreationModel: UserCreationModel(
        email: email.text,
        firstName: firstName.text,
        lastName: lastName.text,
        country: Country(),
      ),
    );
    data.fold(
      (l) {
        Get.snackbar('Failed', errorMessage, backgroundColor: kRed);
        isLoading.value = false;
      },
      (r) async {
        firstName.clear();
        lastName.clear();
        email.clear();
        isLoading.value = false;
        Get.snackbar('Success', 'User details added',
            backgroundColor: kBluePrimary);
        getUserInfo(true);
        Get.offAllNamed(Routes.bottomBar);
        update();
      },
    );
  }

  void getUserInfo(bool isLoad) async {
    if (!isLoad) return;
    isLoading.value = true;
    update();
    final data = await authRepo.getUser();
    data.fold(
      (l) {
        Get.snackbar('Failed', errorMessage, backgroundColor: kRed);
        isLoading.value = false;
      },
      (r) {
        log('${r.country?.toJson()}');
        updateEmailController.text = r.email ?? '';
        updateFirnameController.text = r.firstName ?? '';
        updateLastNameController.text = r.lastName ?? '';
        updatecountryCodeController.text = r.country?.countryCode ?? '';
        updatedailCodeController.text = r.country?.dialCode ?? '';
        updatecountryNameController.text = r.country?.countryName ?? '';
        isLoading.value = false;
        userCreationResponceModel.value = r;
        update();
      },
    );
  }

  void udateUserDetails({
    required ProfileUpdateModel profileUpdateModel,
  }) async {
    if (updateEmailController.text.isEmpty ||
        updateFirnameController.text.isEmpty ||
        updateLastNameController.text.isEmpty) {
      Get.snackbar(
        'Failed',
        'Fill all feilds',
        backgroundColor: kRed,
        duration: const Duration(seconds: 3),
      );
      return;
    }
    isLoading.value = true;
    final data =
        await authRepo.updateUser(profileUpdateModel: profileUpdateModel);
    data.fold(
      (l) {
        isLoading.value = false;
        Get.offNamed(Routes.profile);
      },
      (r) {
        isLoading.value = false;
        getUserInfo(true);
        // Get.offNamed(Routes.profile);
        Get.until((route) => Get.currentRoute == Routes.profile);
        updateEmailController.clear();
        updateFirnameController.clear();
        updateLastNameController.clear();
        updatecountryCodeController.clear();
        updatedailCodeController.clear();
        updatecountryNameController.clear();
      },
    );
  }

  void logOut() async {
    Get.snackbar('Success', 'Logout success');
    Get.offAllNamed(Routes.signUp);
    otpNumber.clear();
    loginOrNot.value = false;
    loginNumber.clear();
    update();
    await SecureStorage.clearLogin();
    await SecureStorage.setOnBoard();
  }
}
