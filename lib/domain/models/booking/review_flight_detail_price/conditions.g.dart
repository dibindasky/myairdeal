// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conditions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Conditions _$ConditionsFromJson(Map<String, dynamic> json) => Conditions(
      ffas: (json['ffas'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isa: json['isa'] as bool?,
      dob: json['dob'] == null
          ? null
          : Dob.fromJson(json['dob'] as Map<String, dynamic>),
      iecr: json['iecr'] as bool?,
      dc: json['dc'] == null
          ? null
          : Dc.fromJson(json['dc'] as Map<String, dynamic>),
      ipa: json['ipa'] as bool?,
      isBa: json['isBA'] as bool?,
      st: (json['st'] as num?)?.toInt(),
      sct: json['sct'] as String?,
      gst: json['gst'] == null
          ? null
          : Gst.fromJson(json['gst'] as Map<String, dynamic>),
      pcs: json['pcs'] == null
          ? null
          : Pcs.fromJson(json['pcs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConditionsToJson(Conditions instance) =>
    <String, dynamic>{
      'ffas': instance.ffas,
      'isa': instance.isa,
      'dob': instance.dob,
      'iecr': instance.iecr,
      'dc': instance.dc,
      'ipa': instance.ipa,
      'isBA': instance.isBa,
      'st': instance.st,
      'sct': instance.sct,
      'gst': instance.gst,
      'pcs': instance.pcs,
    };
