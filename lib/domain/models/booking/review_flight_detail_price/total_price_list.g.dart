// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_price_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TotalPriceList _$TotalPriceListFromJson(Map<String, dynamic> json) =>
    TotalPriceList(
      fd: json['fd'] == null
          ? null
          : FdPrice.fromJson(json['fd'] as Map<String, dynamic>),
      fareIdentifier: json['fareIdentifier'] as String?,
      id: json['id'] as String?,
      messages: json['messages'] as List<dynamic>?,
      pc: json['pc'] == null
          ? null
          : Pc.fromJson(json['pc'] as Map<String, dynamic>),
      fareRuleInformation: json['fareRuleInformation'] == null
          ? null
          : FareRuleInformation.fromJson(
              json['fareRuleInformation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TotalPriceListToJson(TotalPriceList instance) =>
    <String, dynamic>{
      'fd': instance.fd,
      'fareIdentifier': instance.fareIdentifier,
      'id': instance.id,
      'messages': instance.messages,
      'pc': instance.pc,
      'fareRuleInformation': instance.fareRuleInformation,
    };
