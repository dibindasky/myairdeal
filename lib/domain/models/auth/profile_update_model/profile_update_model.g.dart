// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileUpdateModel _$ProfileUpdateModelFromJson(Map<String, dynamic> json) =>
    ProfileUpdateModel(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileUpdateModelToJson(ProfileUpdateModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'country': instance.country,
    };
