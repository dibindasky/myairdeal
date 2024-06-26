// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fd_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FdPrice _$FdPriceFromJson(Map<String, dynamic> json) => FdPrice(
      adult: json['ADULT'] == null
          ? null
          : PayType.fromJson(json['ADULT'] as Map<String, dynamic>),
      child: json['CHILD'] == null
          ? null
          : PayType.fromJson(json['CHILD'] as Map<String, dynamic>),
      infant: json['INFANT'] == null
          ? null
          : PayType.fromJson(json['INFANT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FdPriceToJson(FdPrice instance) => <String, dynamic>{
      'ADULT': instance.adult,
      'INFANT': instance.infant,
      'CHILD': instance.child,
    };
