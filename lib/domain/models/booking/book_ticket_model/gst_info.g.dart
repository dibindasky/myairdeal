// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gst_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GstInfo _$GstInfoFromJson(Map<String, dynamic> json) => GstInfo(
      gstNumber: json['gstNumber'] as String?,
      email: json['email'] as String?,
      registeredName: json['registeredName'] as String?,
      mobile: json['mobile'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$GstInfoToJson(GstInfo instance) => <String, dynamic>{
      'gstNumber': instance.gstNumber,
      'email': instance.email,
      'registeredName': instance.registeredName,
      'mobile': instance.mobile,
      'address': instance.address,
    };
