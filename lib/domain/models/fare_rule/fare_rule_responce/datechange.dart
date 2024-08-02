import 'package:json_annotation/json_annotation.dart';

import 'fcs.dart';

part 'datechange.g.dart';

@JsonSerializable()
class Datechange {
  int? amount;
  String? policyInfo;
  Fcs? fcs;
  String? st;
  String? et;

  Datechange({this.amount, this.policyInfo, this.fcs, this.st, this.et});

  factory Datechange.fromJson(Map<String, dynamic> json) {
    return _$DatechangeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DatechangeToJson(this);
}
