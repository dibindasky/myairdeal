import 'package:json_annotation/json_annotation.dart';
part 'fare_rule_responce.g.dart';

@JsonSerializable()
class FareRuleResponce {
  Map<String, dynamic>? fareRule;
  FareRuleResponce({this.fareRule});

  factory FareRuleResponce.fromJson(Map<String, dynamic> json) =>
      _$FareRuleFromJson(json);

  Map<String, dynamic> toJson() => _$FareRuleToJson(this);
}
