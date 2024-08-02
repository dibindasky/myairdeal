// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fare_rule_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FareRuleRequest _$FareRuleRequestFromJson(Map<String, dynamic> json) =>
    FareRuleRequest(
      bookingId: json['id'] as String?,
      flowType: json['flowType'] as String?,
    );

Map<String, dynamic> _$FareRuleRequestToJson(FareRuleRequest instance) =>
    <String, dynamic>{
      'id': instance.bookingId,
      'flowType': instance.flowType,
    };
