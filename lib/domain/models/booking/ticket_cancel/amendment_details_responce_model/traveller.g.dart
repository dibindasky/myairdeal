// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traveller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Traveller _$TravellerFromJson(Map<String, dynamic> json) => Traveller(
      fn: json['fn'] as String?,
      ln: json['ln'] as String?,
      amendmentCharges: json['amendmentCharges'] as int?,
      refundableamount: json['refundableamount'] as int?,
      totalFare: json['totalFare'] as int?,
    );

Map<String, dynamic> _$TravellerToJson(Traveller instance) => <String, dynamic>{
      'fn': instance.fn,
      'ln': instance.ln,
      'amendmentCharges': instance.amendmentCharges,
      'refundableamount': instance.refundableamount,
      'totalFare': instance.totalFare,
    };
