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

  @override
  String toString() {
    return 'GstInfo{gstNumber: $gstNumber, email: $email, registeredName: $registeredName, mobile: $mobile, address: $address}';
  }

  GstInfo? validateAndCleanDetails() {
    // Replace empty strings with null
    final cleanedGstNumber =
        (gstNumber == null || gstNumber!.isEmpty) ? null : gstNumber;
    final cleanedEmail = (email == null || email!.isEmpty) ? null : email;
    final cleanedRegisteredName =
        (registeredName == null || registeredName!.isEmpty)
            ? null
            : registeredName;
    final cleanedMobile = (mobile == null || mobile!.isEmpty) ? null : mobile;
    final cleanedAddress =
        (address == null || address!.isEmpty) ? null : address;

    // Check if all fields are null
    if (cleanedGstNumber == null &&
        cleanedEmail == null &&
        cleanedRegisteredName == null &&
        cleanedMobile == null &&
        cleanedAddress == null) {
      return null; // Return null if all fields are null or empty
    }

    // Return the updated model with cleaned details
    return GstInfo(
      gstNumber: cleanedGstNumber,
      email: cleanedEmail,
      registeredName: cleanedRegisteredName,
      mobile: cleanedMobile,
      address: cleanedAddress,
    );
  }
}
