// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SInfo _$SInfoFromJson(Map<String, dynamic> json) => SInfo(
      seatNo: json['seatNo'] as String?,
      seatPosition: json['seatPosition'] == null
          ? null
          : SeatPosition.fromJson(json['seatPosition'] as Map<String, dynamic>),
      isBooked: json['isBooked'] as bool?,
      isLegroom: json['isLegroom'] as bool?,
      isAisle: json['isAisle'] as bool?,
      freeSpace: json['freeSpace'] as bool?,
      code: json['code'] as String?,
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$SInfoToJson(SInfo instance) => <String, dynamic>{
      'seatNo': instance.seatNo,
      'seatPosition': instance.seatPosition,
      'isBooked': instance.isBooked,
      'isLegroom': instance.isLegroom,
      'isAisle': instance.isAisle,
      'code': instance.code,
      'amount': instance.amount,
      'freeSpace': instance.freeSpace,
    };
