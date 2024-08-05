import 'package:json_annotation/json_annotation.dart';

part 'otp_verify_model.g.dart';

@JsonSerializable()
class OtpVerifyModel {
  String? otp;
  String? phone;
  String? deviceToken;

  OtpVerifyModel({this.otp, this.phone, this.deviceToken});

  factory OtpVerifyModel.fromJson(Map<String, dynamic> json) {
    return _$OtpVerifyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OtpVerifyModelToJson(this);
}
