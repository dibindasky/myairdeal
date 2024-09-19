import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:myairdeal/domain/models/token/token_model.dart';

class SharedPreferecesStorage {
  static const String accessKey = 'access_key';
  static const String isLogged = 'is_loggedIn';
  static const String isGuest = 'is_Guest';
  static const String isTest = 'is_test_user';
  static const String isOnBoarVisted = 'is_onboar_visted';
  static const String isProfileCreated = 'is_profile_visited';
  static const String phoneKey = 'phone';
  static const String notificationTokenKey = 'notificationToken';
  static const String imageSplash = 'splash_image';

  static Future<void> saveToken({required TokenModel tokenModel}) async {
    log('save token =>() ${tokenModel.token}');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(accessKey, tokenModel.token);
  }

  static Future<TokenModel> getToken() async {
    log('get token =>()');
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString(accessKey);
    return TokenModel(token: accessToken ?? '');
  }

  static Future<void> saveNotificatonToken({required String token}) async {
    log('save noti token =>() $token');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(notificationTokenKey, token);
  }

  static Future<String> getNotificationToken() async {
    log('get noti token =>()');
    final prefs = await SharedPreferences.getInstance();
    final notiToken = prefs.getString(notificationTokenKey);
    return notiToken ?? '';
  }

  static Future<void> setLogin() async {
    log('set login =>()');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(isLogged, true);
  }

  static Future<void> clearLogin() async {
    log('delete all SharedPreferences =>()');
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  static Future<bool> getLogin() async {
    log('get login =>()');
    final prefs = await SharedPreferences.getInstance();
    final login = prefs.getBool(isLogged) ?? false;
    log('get login =>() $login');
    return login;
  }

  static Future<void> setOnBoard() async {
    log('set Onboard =>()');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(isOnBoarVisted, true);
  }

  static Future<bool> getOnBoard() async {
    log('get Onboard =>()');
    final prefs = await SharedPreferences.getInstance();
    final setOnboard = prefs.getBool(isOnBoarVisted) ?? false;
    log('get setOnboard =>() $setOnboard');
    return setOnboard;
  }

  static Future<void> setPhone({required String phone}) async {
    log('set phone =>() $phone');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(phoneKey, phone);
  }

  static Future<String?> getPhone() async {
    final prefs = await SharedPreferences.getInstance();
    final phone = prefs.getString(phoneKey);
    return phone;
  }

  static Future<void> setSplash({required String image}) async {
    log('set splash image =>()');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(imageSplash, image);
  }

  static Future<String?> getSplash() async {
    final prefs = await SharedPreferences.getInstance();
    final image = prefs.getString(imageSplash);
    return image;
  }

  static Future<void> setProfile(bool profile) async {
    log('set setProfile => ');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(isProfileCreated, profile);
  }

  static Future<bool> getProfile() async {
    log('get setProfile =>()');
    final prefs = await SharedPreferences.getInstance();
    final setOnboard = prefs.getBool(isProfileCreated) ?? false;
    log('get setProfile =>() $setOnboard');
    return setOnboard;
  }

  static Future<bool> getGuestLogin() async {
    log('get setProfile =>()');
    final prefs = await SharedPreferences.getInstance();
    final setOnboard = prefs.getBool(isGuest) ?? true;
    log('get setProfile =>() $setOnboard');
    return setOnboard;
  }

  static Future<void> setGuestLogin(bool login) async {
    log('set setProfile => ');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(isGuest, login);
  }

  static Future<bool> getIsTestUser() async {
    log('get IsTestUser =>()');
    final prefs = await SharedPreferences.getInstance();
    final isTestUser = prefs.getBool(isTest) ?? false;
    log('get test user =>() $isTestUser');
    return isTestUser;
  }

  static Future<void> setisTestUser(bool login) async {
    log('set IsTestUser => ');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(isTest, login);
  }
}
