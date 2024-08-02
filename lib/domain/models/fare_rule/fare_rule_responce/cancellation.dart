import 'package:json_annotation/json_annotation.dart';

import 'fcs.dart';

part 'cancellation.g.dart';

@JsonSerializable()
class Cancellation {
  int? amount;
  String? policyInfo;
  Fcs? fcs;
  String? st;
  String? et;

  Cancellation({this.amount, this.policyInfo, this.fcs, this.st, this.et});

  factory Cancellation.fromJson(Map<String, dynamic> json) {
    return _$CancellationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CancellationToJson(this);
}
