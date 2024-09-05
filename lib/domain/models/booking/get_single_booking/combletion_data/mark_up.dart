import 'package:json_annotation/json_annotation.dart';

part 'mark_up.g.dart';

@JsonSerializable()
class MarkUp {
  int? value;
  bool? flatPrice;
  bool? percentage;
  bool? baseFare;
  bool? totalFare;

  MarkUp({
    this.value,
    this.flatPrice,
    this.percentage,
    this.baseFare,
    this.totalFare,
  });

  factory MarkUp.fromJson(Map<String, dynamic> json) {
    return _$MarkUpFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MarkUpToJson(this);
}
