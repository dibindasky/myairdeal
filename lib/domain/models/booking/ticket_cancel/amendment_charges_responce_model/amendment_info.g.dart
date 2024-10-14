// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amendment_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmendmentInfo _$AmendmentInfoFromJson(Map<String, dynamic> json) =>
    AmendmentInfo(
      adult: json['ADULT'] == null
          ? null
          : Adult.fromJson(json['ADULT'] as Map<String, dynamic>),
      child: json['CHILD'] == null
          ? null
          : Child.fromJson(json['CHILD'] as Map<String, dynamic>),
      infant: json['INFANT'] == null
          ? null
          : Infant.fromJson(json['INFANT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AmendmentInfoToJson(AmendmentInfo instance) =>
    <String, dynamic>{
      'ADULT': instance.adult,
      'CHILD': instance.child,
      'INFANT': instance.infant,
    };
