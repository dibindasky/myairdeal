// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pc _$PcFromJson(Map<String, dynamic> json) => Pc(
      code: json['code'] as String?,
      name: json['name'] as String?,
      isLcc: json['isLcc'] as bool?,
    );

Map<String, dynamic> _$PcToJson(Pc instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'isLcc': instance.isLcc,
    };
