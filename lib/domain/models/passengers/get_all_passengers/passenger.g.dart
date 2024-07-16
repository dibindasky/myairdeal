// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Passenger _$PassengerFromJson(Map<String, dynamic> json) => Passenger(
      ti: json['ti'] as String?,
      fN: json['fN'] as String?,
      lN: json['lN'] as String?,
      pt: json['pt'] as String?,
      dob: json['dob'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$PassengerToJson(Passenger instance) => <String, dynamic>{
      'ti': instance.ti,
      'fN': instance.fN,
      'lN': instance.lN,
      'pt': instance.pt,
      'dob': instance.dob,
      '_id': instance.id,
    };
