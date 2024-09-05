// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkin_status_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckinStatusMap _$CheckinStatusMapFromJson(Map<String, dynamic> json) =>
    CheckinStatusMap(
      auhBlr: json['AUH-BLR'] as bool?,
      xnbAuh: json['XNB-AUH'] as bool?,
      blrHyd: json['BLR-HYD'] as bool?,
    );

Map<String, dynamic> _$CheckinStatusMapToJson(CheckinStatusMap instance) =>
    <String, dynamic>{
      'AUH-BLR': instance.auhBlr,
      'XNB-AUH': instance.xnbAuh,
      'BLR-HYD': instance.blrHyd,
    };
