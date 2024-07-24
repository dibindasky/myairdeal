import 'package:json_annotation/json_annotation.dart';

part 'seat_position.g.dart';

@JsonSerializable()
class SeatPosition {
  int? row;
  int? column;

  SeatPosition({this.row, this.column});

  factory SeatPosition.fromJson(Map<String, dynamic> json) {
    return _$SeatPositionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SeatPositionToJson(this);

  SeatPosition copyWith({
    int? row,
    int? column,
  }) {
    return SeatPosition(
      row: row ?? this.row,
      column: column ?? this.column,
    );
  }
}
