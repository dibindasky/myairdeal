import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:myairdeal/domain/models/token/token_model.dart';

class SharedPreferecesStorage {
  static const String accessKey = 'access_key';
  static const String isLogged = 'is_loggedIn';
  static const String isOnBoarVisted = 'is_onboar_visted';
  static const String isProfileCreated = 'is_profile_visited';
  static const String phoneKey = 'phone_key';

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

  static Future<void> setProfile(bool profile) async {
    log('set setProfile =>()');
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
}
