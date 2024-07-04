// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_passenger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SavedPassenger _$SavedPassengerFromJson(Map<String, dynamic> json) =>
    SavedPassenger(
      ti: json['ti'] as String?,
      fN: json['fN'] as String?,
      lN: json['lN'] as String?,
      pt: json['pt'] as String?,
      dob: json['dob'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$SavedPassengerToJson(SavedPassenger instance) =>
    <String, dynamic>{
      'ti': instance.ti,
      'fN': instance.fN,
      'lN': instance.lN,
      'pt': instance.pt,
      'dob': instance.dob,
      '_id': instance.id,
    };
