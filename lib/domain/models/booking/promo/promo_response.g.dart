// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromoResponse _$PromoResponseFromJson(Map<String, dynamic> json) =>
    PromoResponse(
      message: json['message'] as String?,
      value: (json['value'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PromoResponseToJson(PromoResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
      'message': instance.message,
    };
