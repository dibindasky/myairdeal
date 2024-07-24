import 'package:json_annotation/json_annotation.dart';

import 'seat_position.dart';

part 's_info.g.dart';

@JsonSerializable()
class SInfo {
  String? seatNo;
  SeatPosition? seatPosition;
  bool? isBooked;
  bool? isLegroom;
  bool? isAisle;
  String? code;
  int? amount;
  bool? freeSpace;

  SInfo({
    this.seatNo,
    this.seatPosition,
    this.isBooked,
    this.isLegroom,
    this.isAisle,
    this.code,
    this.amount,
    this.freeSpace,
  });

  factory SInfo.fromJson(Map<String, dynamic> json) => _$SInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SInfoToJson(this);

  SInfo copyWith({
    String? seatNo,
    SeatPosition? seatPosition,
    bool? isBooked,
    bool? isLegroom,
    bool? isAisle,
    String? code,
    int? amount,
    bool? freeSpace,
  }) {
    return SInfo(
      seatNo: seatNo ?? this.seatNo,
      seatPosition: seatPosition ?? this.seatPosition,
      isBooked: isBooked ?? this.isBooked,
      isLegroom: isLegroom ?? this.isLegroom,
      isAisle: isAisle ?? this.isAisle,
      code: code ?? this.code,
      amount: amount ?? this.amount,
      freeSpace: freeSpace ?? this.freeSpace,
    );
  }
}
