import 'package:json_annotation/json_annotation.dart';

part 'child.g.dart';

@JsonSerializable()
class Child {
  int? amendmentCharges;
  int? refundAmount;
  int? totalFare;

  Child({this.amendmentCharges, this.refundAmount, this.totalFare});

  factory Child.fromJson(Map<String, dynamic> json) => _$ChildFromJson(json);

  Map<String, dynamic> toJson() => _$ChildToJson(this);
}
