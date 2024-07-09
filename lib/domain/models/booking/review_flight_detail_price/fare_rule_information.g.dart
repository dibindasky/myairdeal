// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fare_rule_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FareRuleInformation _$FareRuleInformationFromJson(Map<String, dynamic> json) =>
    FareRuleInformation(
      fr: json['fr'] == null
          ? null
          : Fr.fromJson(json['fr'] as Map<String, dynamic>),
      tfr: json['tfr'] == null
          ? null
          : Tfr.fromJson(json['tfr'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FareRuleInformationToJson(
        FareRuleInformation instance) =>
    <String, dynamic>{
      'fr': instance.fr,
      'tfr': instance.tfr,
    };
