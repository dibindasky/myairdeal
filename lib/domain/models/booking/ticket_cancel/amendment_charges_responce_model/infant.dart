import 'package:json_annotation/json_annotation.dart';

part 'infant.g.dart';

@JsonSerializable()
class Infant {
  int? amendmentCharges;
  int? refundAmount;
  int? totalFare;

  Infant({this.amendmentCharges, this.refundAmount, this.totalFare});

  factory Infant.fromJson(Map<String, dynamic> json) {
    return _$InfantFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InfantToJson(this);
}
