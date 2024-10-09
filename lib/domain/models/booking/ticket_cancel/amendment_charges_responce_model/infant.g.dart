// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Infant _$InfantFromJson(Map<String, dynamic> json) => Infant(
      amendmentCharges: (json['amendmentCharges'] as num?)?.toInt(),
      refundAmount: (json['refundAmount'] as num?)?.toInt(),
      totalFare: (json['totalFare'] as num?)?.toInt(),
    );

Map<String, dynamic> _$InfantToJson(Infant instance) => <String, dynamic>{
      'amendmentCharges': instance.amendmentCharges,
      'refundAmount': instance.refundAmount,
      'totalFare': instance.totalFare,
    };
