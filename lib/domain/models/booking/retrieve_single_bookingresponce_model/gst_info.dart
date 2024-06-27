import 'package:json_annotation/json_annotation.dart';

part 'gst_info.g.dart';

@JsonSerializable()
class GstInfo {
  String? gstNumber;
  String? email;
  String? mobile;
  String? address;
  String? registeredName;
  String? bookingId;
  String? bookingUserId;
  int? id;

  GstInfo({
    this.gstNumber,
    this.email,
    this.mobile,
    this.address,
    this.registeredName,
    this.bookingId,
    this.bookingUserId,
    this.id,
  });

  factory GstInfo.fromJson(Map<String, dynamic> json) {
    return _$GstInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GstInfoToJson(this);
}
