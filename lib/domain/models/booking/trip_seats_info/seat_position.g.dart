// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeatPosition _$SeatPositionFromJson(Map<String, dynamic> json) => SeatPosition(
      row: (json['row'] as num?)?.toInt(),
      column: (json['column'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SeatPositionToJson(SeatPosition instance) =>
    <String, dynamic>{
      'row': instance.row,
      'column': instance.column,
    };
