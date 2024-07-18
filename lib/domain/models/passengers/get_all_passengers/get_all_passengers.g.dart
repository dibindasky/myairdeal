// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_passengers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllPassengers _$GetAllPassengersFromJson(Map<String, dynamic> json) =>
    GetAllPassengers(
      passengers: (json['passengers'] as List<dynamic>?)
          ?.map((e) => TravellerInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllPassengersToJson(GetAllPassengers instance) =>
    <String, dynamic>{
      'passengers': instance.passengers,
    };
