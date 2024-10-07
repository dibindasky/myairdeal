import 'package:json_annotation/json_annotation.dart';

import 'fcs.dart';

part 'fare_rule_info.g.dart';

@JsonSerializable()
class FareRuleInfo {
  num? amount;
  String? policyInfo;
  Fcs? fcs;
  String? st;
  String? et;

  FareRuleInfo({this.amount, this.policyInfo, this.fcs, this.st, this.et});

  factory FareRuleInfo.fromJson(Map<String, dynamic> json) {
    return _$FareRuleInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FareRuleInfoToJson(this);

  FareRuleInfo copyWith({
    num? amount,
    String? policyInfo,
    Fcs? fcs,
    String? st,
    String? et,
  }) {
    return FareRuleInfo(
      amount: amount ?? this.amount,
      policyInfo: policyInfo ?? this.policyInfo,
      fcs: fcs ?? this.fcs,
      st: st ?? this.st,
      et: et ?? this.et,
    );
  }
}
