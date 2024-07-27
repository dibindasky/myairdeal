// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ssr_meal_infos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SsrMealInfos _$SsrMealInfosFromJson(Map<String, dynamic> json) => SsrMealInfos(
      cokBom: json['COK-BOM'] == null
          ? null
          : CokBom.fromJson(json['COK-BOM'] as Map<String, dynamic>),
      bomDel: json['BOM-DEL'] == null
          ? null
          : BomDel.fromJson(json['BOM-DEL'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SsrMealInfosToJson(SsrMealInfos instance) =>
    <String, dynamic>{
      'COK-BOM': instance.cokBom,
      'BOM-DEL': instance.bomDel,
    };
