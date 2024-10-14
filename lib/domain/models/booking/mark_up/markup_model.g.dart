// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'markup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarkupModel _$MarkupModelFromJson(Map<String, dynamic> json) => MarkupModel(
      value: (json['value'] as num?)?.toInt(),
      flatPrice: json['flatPrice'] as bool?,
      percentage: json['percentage'] as bool?,
      baseFare: json['baseFare'] as bool?,
      totalFare: json['totalFare'] as bool?,
    );

Map<String, dynamic> _$MarkupModelToJson(MarkupModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'flatPrice': instance.flatPrice,
      'percentage': instance.percentage,
      'baseFare': instance.baseFare,
      'totalFare': instance.totalFare,
    };
