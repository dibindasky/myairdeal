// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fd_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FdPrice _$FdPriceFromJson(Map<String, dynamic> json) => FdPrice(
      adult: json['ADULT'] == null
          ? null
          : Adult.fromJson(json['ADULT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FdPriceToJson(FdPrice instance) => <String, dynamic>{
      'ADULT': instance.adult,
    };
