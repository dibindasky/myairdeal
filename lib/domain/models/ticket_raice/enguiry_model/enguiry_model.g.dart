// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enguiry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnguiryModel _$EnguiryModelFromJson(Map<String, dynamic> json) => EnguiryModel(
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      dialCode: json['dialCode'] as String?,
      type: json['type'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$EnguiryModelToJson(EnguiryModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'dialCode': instance.dialCode,
      'type': instance.type,
      'description': instance.description,
    };
