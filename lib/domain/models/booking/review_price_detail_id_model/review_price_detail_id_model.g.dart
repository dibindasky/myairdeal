// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_price_detail_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewPriceDetailIdModel _$ReviewPriceDetailIdModelFromJson(
        Map<String, dynamic> json) =>
    ReviewPriceDetailIdModel(
      priceIds:
          (json['priceIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ReviewPriceDetailIdModelToJson(
        ReviewPriceDetailIdModel instance) =>
    <String, dynamic>{
      'priceIds': instance.priceIds,
    };
