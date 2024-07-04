// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_creation_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCreationResponceModel _$UserCreationResponceModelFromJson(
        Map<String, dynamic> json) =>
    UserCreationResponceModel(
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      addPhone: json['addPhone'] as String?,
      status: json['status'] as String?,
      otp: json['otp'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      savedPassengers: (json['savedPassengers'] as List<dynamic>?)
          ?.map((e) => SavedPassenger.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
    );

Map<String, dynamic> _$UserCreationResponceModelToJson(
        UserCreationResponceModel instance) =>
    <String, dynamic>{
      'country': instance.country,
      '_id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'addPhone': instance.addPhone,
      'status': instance.status,
      'otp': instance.otp,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'savedPassengers': instance.savedPassengers,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
