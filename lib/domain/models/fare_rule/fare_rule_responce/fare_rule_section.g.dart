// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fare_rule_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FareRuleSection _$FareRuleSectionFromJson(Map<String, dynamic> json) =>
    FareRuleSection(
      tfr: json['tfr'] == null
          ? null
          : Tfr.fromJson(json['tfr'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FareRuleSectionToJson(FareRuleSection instance) =>
    <String, dynamic>{
      'tfr': instance.tfr,
    };
