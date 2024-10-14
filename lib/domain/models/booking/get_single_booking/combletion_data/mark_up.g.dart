// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_up.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarkUp _$MarkUpFromJson(Map<String, dynamic> json) => MarkUp(
      value: (json['value'] as num?)?.toInt(),
      flatPrice: json['flatPrice'] as bool?,
      percentage: json['percentage'] as bool?,
      baseFare: json['baseFare'] as bool?,
      totalFare: json['totalFare'] as bool?,
    );

Map<String, dynamic> _$MarkUpToJson(MarkUp instance) => <String, dynamic>{
      'value': instance.value,
      'flatPrice': instance.flatPrice,
      'percentage': instance.percentage,
      'baseFare': instance.baseFare,
      'totalFare': instance.totalFare,
    };
