// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Adult _$AdultFromJson(Map<String, dynamic> json) => Adult(
      amendmentCharges: (json['amendmentCharges'] as num?)?.toInt(),
      refundAmount: (json['refundAmount'] as num?)?.toInt(),
      totalFare: (json['totalFare'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AdultToJson(Adult instance) => <String, dynamic>{
      'amendmentCharges': instance.amendmentCharges,
      'refundAmount': instance.refundAmount,
      'totalFare': instance.totalFare,
    };
