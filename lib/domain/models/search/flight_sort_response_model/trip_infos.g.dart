// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_infos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripInfos _$TripInfosFromJson(Map<String, dynamic> json) => TripInfos(
      onward: (json['ONWARD'] as List<dynamic>?)
          ?.map((e) =>
              SearchAirlineInformation.fromJson(e as Map<String, dynamic>))
          .toList(),
      returns: (json['RETURN'] as List<dynamic>?)
          ?.map((e) =>
              SearchAirlineInformation.fromJson(e as Map<String, dynamic>))
          .toList(),
      combo: (json['COMBO'] as List<dynamic>?)
          ?.map((e) =>
              SearchAirlineInformation.fromJson(e as Map<String, dynamic>))
          .toList(),
      multicity1: (json['0'] as List<dynamic>?)
          ?.map((e) =>
              SearchAirlineInformation.fromJson(e as Map<String, dynamic>))
          .toList(),
      multicity2: (json['1'] as List<dynamic>?)
          ?.map((e) =>
              SearchAirlineInformation.fromJson(e as Map<String, dynamic>))
          .toList(),
      multicity3: (json['2'] as List<dynamic>?)
          ?.map((e) =>
              SearchAirlineInformation.fromJson(e as Map<String, dynamic>))
          .toList(),
      multicity4: (json['3'] as List<dynamic>?)
          ?.map((e) =>
              SearchAirlineInformation.fromJson(e as Map<String, dynamic>))
          .toList(),
      multicity5: (json['4'] as List<dynamic>?)
          ?.map((e) =>
              SearchAirlineInformation.fromJson(e as Map<String, dynamic>))
          .toList(),
      multicity6: (json['5'] as List<dynamic>?)
          ?.map((e) =>
              SearchAirlineInformation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TripInfosToJson(TripInfos instance) => <String, dynamic>{
      'ONWARD': instance.onward,
      'RETURN': instance.returns,
      'COMBO': instance.combo,
      '0': instance.multicity1,
      '1': instance.multicity2,
      '2': instance.multicity3,
      '3': instance.multicity4,
      '4': instance.multicity5,
      '5': instance.multicity6,
    };
