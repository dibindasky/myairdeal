import 'package:json_annotation/json_annotation.dart';

part 'gst_info.g.dart';

@JsonSerializable()
class GstInfo {
  String? gstNumber;
  String? email;
  String? registeredName;
  String? mobile;
  String? address;

  GstInfo({
    this.gstNumber,
    this.email,
    this.registeredName,
    this.mobile,
    this.address,
  });

  factory GstInfo.fromJson(Map<String, dynamic> json) {
    return _$GstInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GstInfoToJson(this);

  GstInfo copyWith({
    String? gstNumber,
    String? email,
    String? registeredName,
    String? mobile,
    String? address,
  }) {
    return GstInfo(
      gstNumber: gstNumber ?? this.gstNumber,
      email: email ?? this.email,
      registeredName: registeredName ?? this.registeredName,
      mobile: mobile ?? this.mobile,
      address: address ?? this.address,
    );
  }
}
