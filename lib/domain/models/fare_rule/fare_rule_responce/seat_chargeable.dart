import 'package:json_annotation/json_annotation.dart';

part 'seat_chargeable.g.dart';

@JsonSerializable()
class SeatChargeable {
  String? policyInfo;
  String? st;
  String? et;

  SeatChargeable({this.policyInfo, this.st, this.et});

  factory SeatChargeable.fromJson(Map<String, dynamic> json) {
    return _$SeatChargeableFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SeatChargeableToJson(this);
}
