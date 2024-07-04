import 'package:json_annotation/json_annotation.dart';

import 'country.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  String? mobileNumber;
  Country? country;

  LoginModel({this.mobileNumber, this.country});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return _$LoginModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
