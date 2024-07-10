// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Errors _$ErrorsFromJson(Map<String, dynamic> json) => Errors(
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => Error.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ErrorsToJson(Errors instance) => <String, dynamic>{
      'status': instance.status,
      'errors': instance.errors,
    };
