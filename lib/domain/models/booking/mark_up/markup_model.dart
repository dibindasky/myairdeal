import 'package:json_annotation/json_annotation.dart';

part 'markup_model.g.dart';

@JsonSerializable()
class MarkupModel {
  int? value;
  bool? flatPrice;
  bool? percentage;
  bool? baseFare;
  bool? totalFare;

  MarkupModel({
    this.value,
    this.flatPrice,
    this.percentage,
    this.baseFare,
    this.totalFare,
  });

  factory MarkupModel.fromJson(Map<String, dynamic> json) => _$MarkupModelFromJson(json);
  Map<String, dynamic> toJson() => _$MarkupModelToJson(this);
}
