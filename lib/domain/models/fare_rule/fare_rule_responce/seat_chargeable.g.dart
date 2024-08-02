// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_chargeable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeatChargeable _$SeatChargeableFromJson(Map<String, dynamic> json) =>
    SeatChargeable(
      policyInfo: json['policyInfo'] as String?,
      st: json['st'] as String?,
      et: json['et'] as String?,
    );

Map<String, dynamic> _$SeatChargeableToJson(SeatChargeable instance) =>
    <String, dynamic>{
      'policyInfo': instance.policyInfo,
      'st': instance.st,
      'et': instance.et,
    };
