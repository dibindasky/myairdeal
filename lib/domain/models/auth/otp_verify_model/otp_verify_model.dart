import 'package:json_annotation/json_annotation.dart';

part 'otp_verify_model.g.dart';

@JsonSerializable()
class OtpVerifyModel {
  String? otp;
  String? phone;

  OtpVerifyModel({this.otp, this.phone});

  factory OtpVerifyModel.fromJson(Map<String, dynamic> json) {
    return _$OtpVerifyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OtpVerifyModelToJson(this);
}
