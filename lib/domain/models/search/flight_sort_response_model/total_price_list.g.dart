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
      msri: json['msri'] as List<dynamic>?,
      sri: json['sri'] as String?,
      messages: json['messages'] as List<dynamic>?,
      icca: json['icca'] as bool?,
    );

Map<String, dynamic> _$TotalPriceListToJson(TotalPriceList instance) =>
    <String, dynamic>{
      'fd': instance.fd,
      'fareIdentifier': instance.fareIdentifier,
      'id': instance.id,
      'sri': instance.sri,
      'msri': instance.msri,
      'messages': instance.messages,
      'icca': instance.icca,
    };
