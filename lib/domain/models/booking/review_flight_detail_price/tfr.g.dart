// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tfr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tfr _$TfrFromJson(Map<String, dynamic> json) => Tfr(
      noShow: (json['NO_SHOW'] as List<dynamic>?)
          ?.map((e) => FareRuleInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      datechange: (json['DATECHANGE'] as List<dynamic>?)
          ?.map((e) => FareRuleInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      cancellation: (json['CANCELLATION'] as List<dynamic>?)
          ?.map((e) => FareRuleInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      seatChargeable: (json['SEAT_CHARGEABLE'] as List<dynamic>?)
          ?.map((e) => FareRuleInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TfrToJson(Tfr instance) => <String, dynamic>{
      'NO_SHOW': instance.noShow,
      'DATECHANGE': instance.datechange,
      'CANCELLATION': instance.cancellation,
      'SEAT_CHARGEABLE': instance.seatChargeable,
    };
