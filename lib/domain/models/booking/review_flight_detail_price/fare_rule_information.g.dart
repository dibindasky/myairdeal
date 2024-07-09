// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fare_rule_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FareRuleInformation _$FareRuleInformationFromJson(Map<String, dynamic> json) =>
    FareRuleInformation(
      tfr: json['tfr'] == null
          ? null
          : Tfr.fromJson(json['tfr'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FareRuleInformationToJson(
        FareRuleInformation instance) =>
    <String, dynamic>{
      'tfr': instance.tfr,
    };
