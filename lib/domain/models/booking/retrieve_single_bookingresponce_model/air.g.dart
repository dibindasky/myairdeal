// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Air _$AirFromJson(Map<String, dynamic> json) => Air(
      tripInfos: (json['tripInfos'] as List<dynamic>?)
          ?.map((e) => TripInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      travellerInfos: (json['travellerInfos'] as List<dynamic>?)
          ?.map((e) => TravellerInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPriceInfo: json['totalPriceInfo'] == null
          ? null
          : TotalPriceInfo.fromJson(
              json['totalPriceInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AirToJson(Air instance) => <String, dynamic>{
      'tripInfos': instance.tripInfos,
      'travellerInfos': instance.travellerInfos,
      'totalPriceInfo': instance.totalPriceInfo,
    };
