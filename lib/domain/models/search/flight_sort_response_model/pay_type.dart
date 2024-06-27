import 'package:json_annotation/json_annotation.dart';

import 'af_c.dart';
import 'bi.dart';
import 'fc.dart';

part 'pay_type.g.dart';

@JsonSerializable()
class PayType {
  Fc? fC;
  AfC? afC;
  int? sR;
  Bi? bI;
  int? rT;
  String? cc;
  String? cB;
  String? fB;
  bool? mI;

  PayType({
    this.fC,
    this.afC,
    this.sR,
    this.bI,
    this.rT,
    this.cc,
    this.cB,
    this.fB,
    this.mI,
  });

  factory PayType.fromJson(Map<String, dynamic> json) =>
      _$PayTypeFromJson(json);

  Map<String, dynamic> toJson() => _$PayTypeToJson(this);

  PayType copyWith({
    Fc? fC,
    AfC? afC,
    int? sR,
    Bi? bI,
    int? rT,
    String? cc,
    String? cB,
    String? fB,
    bool? mI,
  }) {
    return PayType(
      fC: fC ?? this.fC,
      afC: afC ?? this.afC,
      sR: sR ?? this.sR,
      bI: bI ?? this.bI,
      rT: rT ?? this.rT,
      cc: cc ?? this.cc,
      cB: cB ?? this.cB,
      fB: fB ?? this.fB,
      mI: mI ?? this.mI,
    );
  }
}
