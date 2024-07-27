// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_single_bookingresponce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveSingleBookingresponceModel _$RetrieveSingleBookingresponceModelFromJson(
        Map<String, dynamic> json) =>
    RetrieveSingleBookingresponceModel(
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      itemInfos: json['itemInfos'] == null
          ? null
          : ItemInfos.fromJson(json['itemInfos'] as Map<String, dynamic>),
      gstInfo: json['gstInfo'] == null
          ? null
          : GstInfo.fromJson(json['gstInfo'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RetrieveSingleBookingresponceModelToJson(
        RetrieveSingleBookingresponceModel instance) =>
    <String, dynamic>{
      'order': instance.order,
      'itemInfos': instance.itemInfos,
      'gstInfo': instance.gstInfo,
      'status': instance.status,
    };
