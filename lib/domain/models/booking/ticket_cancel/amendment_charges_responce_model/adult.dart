import 'package:json_annotation/json_annotation.dart';

part 'adult.g.dart';

@JsonSerializable()
class Adult {
  int? amendmentCharges;
  int? refundAmount;
  int? totalFare;

  Adult({this.amendmentCharges, this.refundAmount, this.totalFare});

  factory Adult.fromJson(Map<String, dynamic> json) => _$AdultFromJson(json);

  Map<String, dynamic> toJson() => _$AdultToJson(this);
}
