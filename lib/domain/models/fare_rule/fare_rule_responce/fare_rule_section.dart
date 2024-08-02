import 'package:json_annotation/json_annotation.dart';

import 'tfr.dart';

part 'fare_rule_section.g.dart';

@JsonSerializable()
class FareRuleSection {
  Tfr? tfr;

  FareRuleSection({this.tfr});

  factory FareRuleSection.fromJson(Map<String, dynamic> json) {
    return _$FareRuleSectionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FareRuleSectionToJson(this);
}
