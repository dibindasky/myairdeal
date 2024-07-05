// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_creation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCreationModel _$UserCreationModelFromJson(Map<String, dynamic> json) =>
    UserCreationModel(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserCreationModelToJson(UserCreationModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'country': instance.country,
    };
