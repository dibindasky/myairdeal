// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gst_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GstInfo _$GstInfoFromJson(Map<String, dynamic> json) => GstInfo(
      gstNumber: json['gstNumber'] as String?,
      email: json['email'] as String?,
      mobile: json['mobile'] as String?,
      address: json['address'] as String?,
      registeredName: json['registeredName'] as String?,
      bookingId: json['bookingId'] as String?,
      bookingUserId: json['bookingUserId'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$GstInfoToJson(GstInfo instance) => <String, dynamic>{
      'gstNumber': instance.gstNumber,
      'email': instance.email,
      'mobile': instance.mobile,
      'address': instance.address,
      'registeredName': instance.registeredName,
      'bookingId': instance.bookingId,
      'bookingUserId': instance.bookingUserId,
      'id': instance.id,
    };
