// import 'dart:developer';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:myairdeal/domain/models/token/token_model.dart';

// class SecureStorage {
//   static const String accessKey = 'access_key';
//   static const String isLogged = 'is_loggedIn';
//   static const String isPartnerKey = 'is_partner';
//   static const String phoneKey = 'phone_key';
//   static const String notificationKey = 'notification_key';

//   static final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

//   static Future<void> saveToken({required TokenModel tokenModel}) async {
//     log('save token =>() ${tokenModel.token}');
//     await _secureStorage.write(key: accessKey, value: tokenModel.token);
//   }

//   static Future<TokenModel> getToken() async {
//     log('get token =>()');
//     final accessToken = await _secureStorage.read(key: accessKey);
//     return TokenModel(token: accessToken ?? '');
//   }

//   static Future<void> setLogin() async {
//     log('set login =>()');
//     await _secureStorage.write(key: isLogged, value: 'true');
//     await _secureStorage.write(key: notificationKey, value: '0');
//   }

//   static Future<void> clearLogin() async {
//     log('delete all secureStorage =>()');
//     await _secureStorage.deleteAll();
//   }

//   static Future<bool> getLogin() async {
//     log('get login =>()');
//     final login = await _secureStorage.read(key: isLogged) ?? 'false';
//     log('get login =>() $login');
//     return login == 'true';
//   }

//   static Future<void> setRole({required bool isPartner}) async {
//     log('set isBusiness token =>() $isPartner');
//     await _secureStorage.write(key: isPartnerKey, value: isPartner.toString());
//   }

//   static Future<bool> getRole() async {
//     final role = await _secureStorage.read(key: isPartnerKey) ?? 'false';
//     return role == 'true';
//   }

//   static Future<void> setNotification({required int length}) async {
//     await _secureStorage.write(key: notificationKey, value: length.toString());
//   }

//   static Future<int> getNotification() async {
//     final noti = await _secureStorage.read(key: notificationKey) ?? '0';
//     return int.parse(noti);
//   }

//   static Future<void> setPhone({required String phone}) async {
//     log('set phone =>() $phone');
//     await _secureStorage.write(key: phoneKey, value: phone);
//   }

//   static Future<String?> getPhone() async {
//     final phone = await _secureStorage.read(key: phoneKey);
//     return phone;
//   }
// }
