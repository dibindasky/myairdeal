import 'package:json_annotation/json_annotation.dart';

import 'af_c.dart';
import 'bi.dart';
import 'fc.dart';

part 'pay_type.g.dart';

@JsonSerializable()
class PayType {
  Fc? fC;
  AfC? afC;
  num? sR;
  Bi? bI;
  num? rT;
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
    num? sR,
    Bi? bI,
    num? rT,
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

  static const colLocalId = 'local_id';
  static const colFdPriceId = 'fd_price_id';
  static const colFc = 'fC';
  static const colAfC = 'afC';
  static const colSR = 'sR';
  static const colBi = 'bI';
  static const colRT = 'rT';
  static const colCC = 'cc';
  static const colCB = 'cB';
  static const colFB = 'fB';
  static const colMI = 'mI';
}
