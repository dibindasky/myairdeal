// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Child _$ChildFromJson(Map<String, dynamic> json) => Child(
      amendmentCharges: (json['amendmentCharges'] as num?)?.toInt(),
      refundAmount: (json['refundAmount'] as num?)?.toInt(),
      totalFare: (json['totalFare'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChildToJson(Child instance) => <String, dynamic>{
      'amendmentCharges': instance.amendmentCharges,
      'refundAmount': instance.refundAmount,
      'totalFare': instance.totalFare,
    };
