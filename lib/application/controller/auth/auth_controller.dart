import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/home_controller.dart';
import 'package:myairdeal/application/controller/talkto_us/talk_to_us_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/validators/validators.dart';
import 'package:myairdeal/data/firebase_configuration/firebase_notification.dart';
import 'package:myairdeal/data/secure_storage/secure_storage.dart';
import 'package:myairdeal/data/service/auth/auth_service.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';
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
  RxBool logFromBooking = false.obs;
  RxBool isGuest = true.obs;

  /// variable to change the url according to the login number
  /// if number is[99999 99999] then show the test api and dummy payment
  RxBool isTestNumber = false.obs;

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

  // In Almost done screen
  Rx<UserCreationResponceModel> userCreationResponceModel =
      UserCreationResponceModel().obs;

  // Splash model
  RxString splashModelImage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    getSplashImageFromStorage();
    otpNumber.addListener(_checkOTPNumberLength);
    loginNumber.addListener(_checkPhoneNumberLength);
  }

  // Change login section to sign up
  RxBool changeLogin = false.obs;
  void changeLoginBool() async {
    changeLogin.value = !changeLogin.value;
  }

  /// change while coming to login from booking
  void changeBookingLogin(bool value) async {
    logFromBooking.value = value;
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
    await SharedPreferecesStorage.setOnBoard();
  }

  void getSplash() async {
    final data = await authRepo.getSplash();
    data.fold(
      (l) => null,
      (r) async {
        String image = r.base64String ?? '';
        if (image == '') return;
        image = image.startsWith('data') ? removeBase64Prefix(image) : image;
        await SharedPreferecesStorage.setSplash(image: image);
      },
    );
  }

  void getSplashImageFromStorage() async {
    splashModelImage.value = await SharedPreferecesStorage.getSplash() ?? '';
    Timer(const Duration(milliseconds: 1600), () {
      whereToGo();
      // check for any update in splash image, if any change the image
      getSplash();
    });
  }

  Future<void> whereToGo() async {
    final isLogin = await SharedPreferecesStorage.getLogin();
    final onBoard = await SharedPreferecesStorage.getOnBoard();
    final profile = await SharedPreferecesStorage.getProfile();
    final isGuest = await SharedPreferecesStorage.getGuestLogin();
    final isTest = await SharedPreferecesStorage.getIsTestUser();
    isTestNumber.value = isTest;
    if (isTest) {
      ApiEndPoints.changeBaseURL(ApiEndPoints.testBaseUrl);
    }
    if (!onBoard) {
      Get.toNamed(Routes.onboard);
    } else if (isGuest) {
      Get.offAndToNamed(Routes.bottomBar);
    } else if (!isLogin) {
      Get.toNamed(Routes.signUpSignIn);
    } else if (!profile) {
      Get.offAndToNamed(Routes.alMostDone);
    } else if (onBoard && isLogin) {
      Get.offAndToNamed(Routes.bottomBar);
    }
  }

  Future<void> guestLogin() async {
    await SharedPreferecesStorage.setGuestLogin(true);
    if (logFromBooking.value) {
      Get.back();
    } else {
      Get.offAndToNamed(Routes.bottomBar);
    }
  }

  Future<void> logOrNot() async {
    isGuest.value = await SharedPreferecesStorage.getGuestLogin();
    loginOrNot.value = await SharedPreferecesStorage.getLogin();
    update();
  }

  Future<void> sendSMS() async {
    String trimmedNumber = loginNumber.text.trim();
    String replaceWhiteSpace = trimmedNumber.replaceAll(' ', '');
    isLoading.value = true;
    hasError = false;
    update();
    if (replaceWhiteSpace == '') {
      ApiEndPoints.changeBaseURL(ApiEndPoints.testBaseUrl);
      SharedPreferecesStorage.setisTestUser(true);
      isTestNumber.value = true;
    } else {
      ApiEndPoints.changeBaseURL(ApiEndPoints.liveBaseUrl);
      SharedPreferecesStorage.setisTestUser(false);
      isTestNumber.value = false;
    }
    final data = await authRepo.sendSMS(
      loginModel: LoginModel(
        mobileNumber: replaceWhiteSpace,
        country: Country(
            dialCode: dialCode?.value ?? '+91',
            countryCode: countryCode?.value ?? 'IN',
            countryName: countryName?.value ?? 'India'),
      ),
    );
    data.fold((failure) {
      isLoading.value = false;
      hasError = true;
      update();
      Get.snackbar(
        'Failed',
        'OTP Sending Failed. Please try again later.',
        backgroundColor: kRed,
      );
    }, (success) {
      isLoading.value = false;
      hasError = false;
      Get.snackbar('Success', 'OTP Sent Successfully',
          backgroundColor: Get.find<ThemeController>().secondaryColor);
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
    final token = await NotificationServices().getDeviceToken();
    final data = await authRepo.verifyOTP(
        otpVerifyModel: OtpVerifyModel(
            phone: replaceWhiteSpace, otp: otpNumber.text, deviceToken: token));
    data.fold((l) {
      isLoading.value = false;
      hasError = true;
      update();
      Get.snackbar('Failed', 'OTP Verification Failed', backgroundColor: kRed);
    }, (r) async {
      loginOrNot.value = false;
      SharedPreferecesStorage.setProfile(r.profile ?? false);
      if (r.profile == null || r.profile == false) {
        Get.offNamed(Routes.alMostDone);
      } else {
        if (logFromBooking.value) {
          Get.back();
          Get.back();
          Get.find<HomeController>()
              .changeNavigationChecker(NavigationChecker.itinary);
        } else {
          Get.offAllNamed(Routes.bottomBar);
        }
        changeBookingLogin(false);
      }
      SharedPreferecesStorage.saveToken(
          tokenModel: TokenModel(token: r.token ?? ''));
      isLoading.value = false;
      hasError = false;
      update();
      Get.snackbar('Success', 'OTP Verified Successfully',
          backgroundColor: Get.find<ThemeController>().secondaryColor);
      SharedPreferecesStorage.setLogin();
      SharedPreferecesStorage.setGuestLogin(false);
      Timer(const Duration(milliseconds: 50), () {
        loginOrNot.value = true;
      });
      SharedPreferecesStorage.saveNotificatonToken(token: token);
    });
  }

  void userCreation() async {
    update();
    if (email.text.isEmpty || firstName.text.isEmpty || lastName.text.isEmpty) {
      Get.snackbar('Failed', 'Fields are Empty', backgroundColor: kRed);
    }
    if (firstName.text.isEmpty || firstName.text.length <= 2) {
      Get.snackbar('Failed', 'First Name must have at least 3 characters',
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
        Get.snackbar('Success', 'Account created successfully',
            backgroundColor: kGoldPrimary);
        getUserInfo(true);
        await SharedPreferecesStorage.setProfile(true);
        if (logFromBooking.value) {
          Get.back();
          Get.find<HomeController>()
              .changeNavigationChecker(NavigationChecker.search);
        } else {
          Get.offAllNamed(Routes.bottomBar);
        }
        changeBookingLogin(false);
        update();
      },
    );
  }

  void getUserInfo(bool isLoad) async {
    if (!isLoad || !loginOrNot.value) return;
    isLoading.value = true;
    update();
    final data = await authRepo.getUser();
    data.fold(
      (l) {
        Get.snackbar('Failed', errorMessage, backgroundColor: kRed);
        isLoading.value = false;
      },
      (r) {
        final talkToUsController = Get.find<TalkToUsController>();
        final fullName = '${r.firstName ?? ''} ${r.lastName ?? ''}';
        updateEmailController.text = r.email ?? '';
        updateFirnameController.text = r.firstName ?? '';
        updateLastNameController.text = r.lastName ?? '';
        // talkToUsController.enquiryEmailController.text.isEmpty
        //     ? r.email ?? ''
        //     : talkToUsController.enquiryEmailController.text;
        // talkToUsController.enquiryNameController.text.isEmpty
        //     ? fullName
        //     : talkToUsController.enquiryNameController.text;
        // talkToUsController.enquiryNumberController.text.isEmpty
        //     ? r.phone ?? ''
        //     : talkToUsController.enquiryNumberController.text;
        talkToUsController.enquiryEmailController.text = r.email ?? '';
        talkToUsController.enquiryNameController.text = fullName;
        talkToUsController.enquiryNumberController.text = r.phone ?? '';
        //log('name ${talkToUsController.enquiryNameController.text}');
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
      Get.snackbar('Failed', 'Fill all Feilds',
          backgroundColor: kRed, duration: const Duration(seconds: 3));
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
        Get.snackbar('Success!', 'Your profile has been updated successfully.',
            backgroundColor: kWhite, snackPosition: SnackPosition.BOTTOM);
        isLoading.value = false;
        getUserInfo(true);
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
    isLoading.value = true;
    final token = await SharedPreferecesStorage.getNotificationToken();
    authRepo.clearToken(tokenModel: TokenModel(token: token));
    Get.snackbar('Success!', 'You\'ve Successfully Signed Out!',
        backgroundColor: Get.find<ThemeController>().secondaryColor);
    isLoading.value = false;
    Get.offAllNamed(Routes.signUpSignIn);
    otpNumber.clear();
    loginOrNot.value = false;
    loginNumber.clear();
    update();
    await SharedPreferecesStorage.clearLogin();
    await SharedPreferecesStorage.setOnBoard();
    SharedPreferecesStorage.setisTestUser(false);
    isTestNumber.value = false;
  }
}
