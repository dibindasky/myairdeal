import 'package:json_annotation/json_annotation.dart';

import 'tfr.dart';

part 'fare_rule_information.g.dart';

@JsonSerializable()
class FareRuleInformation {
  Tfr? tfr;

  FareRuleInformation({this.tfr});

  factory FareRuleInformation.fromJson(Map<String, dynamic> json) {
    return _$FareRuleInformationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FareRuleInformationToJson(this);

  FareRuleInformation copyWith({
    Tfr? tfr,
  }) {
    return FareRuleInformation(
      tfr: tfr ?? this.tfr,
    );
  }
}
