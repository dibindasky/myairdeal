import 'package:json_annotation/json_annotation.dart';

import 'fr.dart';
import 'tfr.dart';

part 'fare_rule_information.g.dart';

@JsonSerializable()
class FareRuleInformation {
  Fr? fr;
  Tfr? tfr;

  FareRuleInformation({this.fr, this.tfr});

  factory FareRuleInformation.fromJson(Map<String, dynamic> json) {
    return _$FareRuleInformationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FareRuleInformationToJson(this);

  FareRuleInformation copyWith({
    Fr? fr,
    Tfr? tfr,
  }) {
    return FareRuleInformation(
      fr: fr ?? this.fr,
      tfr: tfr ?? this.tfr,
    );
  }
}
