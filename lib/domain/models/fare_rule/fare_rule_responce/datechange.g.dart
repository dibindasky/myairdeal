// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datechange.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datechange _$DatechangeFromJson(Map<String, dynamic> json) => Datechange(
      amount: (json['amount'] as num?)?.toInt(),
      policyInfo: json['policyInfo'] as String?,
      fcs: json['fcs'] == null
          ? null
          : Fcs.fromJson(json['fcs'] as Map<String, dynamic>),
      st: json['st'] as String?,
      et: json['et'] as String?,
    );

Map<String, dynamic> _$DatechangeToJson(Datechange instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'policyInfo': instance.policyInfo,
      'fcs': instance.fcs,
      'st': instance.st,
      'et': instance.et,
    };
