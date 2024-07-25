// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Child _$ChildFromJson(Map<String, dynamic> json) => Child(
      amendmentCharges: json['amendmentCharges'] as int?,
      refundAmount: json['refundAmount'] as int?,
      totalFare: json['totalFare'] as int?,
    );

Map<String, dynamic> _$ChildToJson(Child instance) => <String, dynamic>{
      'amendmentCharges': instance.amendmentCharges,
      'refundAmount': instance.refundAmount,
      'totalFare': instance.totalFare,
    };
