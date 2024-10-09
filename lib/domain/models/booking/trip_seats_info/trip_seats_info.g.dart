// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_seats_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripSeatsInfo _$TripSeatsInfoFromJson(Map<String, dynamic> json) =>
    TripSeatsInfo(
      sData: json['sData'] == null
          ? null
          : SData.fromJson(json['sData'] as Map<String, dynamic>),
      sInfo: (json['sInfo'] as List<dynamic>?)
          ?.map((e) => SInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      nt: json['nt'] as String?,
    );

Map<String, dynamic> _$TripSeatsInfoToJson(TripSeatsInfo instance) =>
    <String, dynamic>{
      'sData': instance.sData,
      'sInfo': instance.sInfo,
      'nt': instance.nt,
    };
