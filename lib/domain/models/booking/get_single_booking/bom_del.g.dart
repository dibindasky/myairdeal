// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bom_del.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BomDel _$BomDelFromJson(Map<String, dynamic> json) => BomDel(
      code: json['code'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      desc: json['desc'] as String?,
    );

Map<String, dynamic> _$BomDelToJson(BomDel instance) => <String, dynamic>{
      'code': instance.code,
      'amount': instance.amount,
      'desc': instance.desc,
    };
