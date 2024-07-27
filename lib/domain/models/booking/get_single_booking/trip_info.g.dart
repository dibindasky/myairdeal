// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripInfo _$TripInfoFromJson(Map<String, dynamic> json) => TripInfo(
      sI: (json['sI'] as List<dynamic>?)
          ?.map((e) => Si.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TripInfoToJson(TripInfo instance) => <String, dynamic>{
      'sI': instance.sI,
    };
