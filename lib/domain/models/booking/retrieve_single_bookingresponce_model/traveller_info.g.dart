// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traveller_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravellerInfo _$TravellerInfoFromJson(Map<String, dynamic> json) =>
    TravellerInfo(
      dob: json['dob'] as String,
      pnrDetails: json['pnrDetails'] == null
          ? null
          : PnrDetails.fromJson(json['pnrDetails'] as Map<String, dynamic>),
      ticketNumberDetails: json['ticketNumberDetails'] == null
          ? null
          : TicketNumberDetails.fromJson(
              json['ticketNumberDetails'] as Map<String, dynamic>),
      checkinStatusMap: json['checkinStatusMap'] == null
          ? null
          : CheckinStatusMap.fromJson(
              json['checkinStatusMap'] as Map<String, dynamic>),
      ti: json['ti'] as String?,
      pt: json['pt'] as String?,
      fN: json['fN'] as String?,
      lN: json['lN'] as String?,
    );

Map<String, dynamic> _$TravellerInfoToJson(TravellerInfo instance) =>
    <String, dynamic>{
      'dob': instance.dob,
      'pnrDetails': instance.pnrDetails,
      'ticketNumberDetails': instance.ticketNumberDetails,
      'checkinStatusMap': instance.checkinStatusMap,
      'ti': instance.ti,
      'pt': instance.pt,
      'fN': instance.fN,
      'lN': instance.lN,
    };
