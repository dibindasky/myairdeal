// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meal _$MealFromJson(Map<String, dynamic> json) => Meal(
      code: json['code'] as String?,
      desc: json['desc'] as String?,
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$MealToJson(Meal instance) => <String, dynamic>{
      'code': instance.code,
      'desc': instance.desc,
      'amount': instance.amount,
    };
