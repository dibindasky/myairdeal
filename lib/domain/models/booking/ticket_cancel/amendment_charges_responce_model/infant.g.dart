// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Infant _$InfantFromJson(Map<String, dynamic> json) => Infant(
      amendmentCharges: json['amendmentCharges'] as int?,
      refundAmount: json['refundAmount'] as int?,
      totalFare: json['totalFare'] as int?,
    );

Map<String, dynamic> _$InfantToJson(Infant instance) => <String, dynamic>{
      'amendmentCharges': instance.amendmentCharges,
      'refundAmount': instance.refundAmount,
      'totalFare': instance.totalFare,
    };
