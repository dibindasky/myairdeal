// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_price_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TotalPriceInfo _$TotalPriceInfoFromJson(Map<String, dynamic> json) =>
    TotalPriceInfo(
      totalFareDetail: json['totalFareDetail'] == null
          ? null
          : TotalFareDetail.fromJson(
              json['totalFareDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TotalPriceInfoToJson(TotalPriceInfo instance) =>
    <String, dynamic>{
      'totalFareDetail': instance.totalFareDetail,
    };
