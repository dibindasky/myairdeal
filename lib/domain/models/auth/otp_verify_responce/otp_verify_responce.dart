import 'package:json_annotation/json_annotation.dart';

part 'otp_verify_responce.g.dart';

@JsonSerializable()
class OtpVerifyResponce {
  String? token;
  bool? profile;

  OtpVerifyResponce({this.token, this.profile});

  factory OtpVerifyResponce.fromJson(Map<String, dynamic> json) {
    return _$OtpVerifyResponceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OtpVerifyResponceToJson(this);
}
