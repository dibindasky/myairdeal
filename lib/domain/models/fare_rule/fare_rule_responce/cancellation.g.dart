// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancellation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cancellation _$CancellationFromJson(Map<String, dynamic> json) => Cancellation(
      amount: json['amount'] as int?,
      policyInfo: json['policyInfo'] as String?,
      fcs: json['fcs'] == null
          ? null
          : Fcs.fromJson(json['fcs'] as Map<String, dynamic>),
      st: json['st'] as String?,
      et: json['et'] as String?,
    );

Map<String, dynamic> _$CancellationToJson(Cancellation instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'policyInfo': instance.policyInfo,
      'fcs': instance.fcs,
      'st': instance.st,
      'et': instance.et,
    };
