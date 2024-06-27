// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_infos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemInfos _$ItemInfosFromJson(Map<String, dynamic> json) => ItemInfos(
      air: json['AIR'] == null
          ? null
          : Air.fromJson(json['AIR'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemInfosToJson(ItemInfos instance) => <String, dynamic>{
      'AIR': instance.air,
    };
