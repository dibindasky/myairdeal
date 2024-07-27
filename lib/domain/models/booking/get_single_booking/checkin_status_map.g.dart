// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkin_status_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckinStatusMap _$CheckinStatusMapFromJson(Map<String, dynamic> json) =>
    CheckinStatusMap(
      bomDel: json['BOM-DEL'] as bool?,
      cokBom: json['COK-BOM'] as bool?,
    );

Map<String, dynamic> _$CheckinStatusMapToJson(CheckinStatusMap instance) =>
    <String, dynamic>{
      'BOM-DEL': instance.bomDel,
      'COK-BOM': instance.cokBom,
    };
