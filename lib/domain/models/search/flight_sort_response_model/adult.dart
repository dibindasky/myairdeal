import 'package:json_annotation/json_annotation.dart';

import 'af_c.dart';
import 'bi.dart';
import 'fc.dart';

part 'adult.g.dart';

@JsonSerializable()
class Adult {
  Fc? fC;
  AfC? afC;
  int? sR;
  Bi? bI;
  int? rT;
  String? cc;
  String? cB;
  String? fB;
  bool? mI;

  Adult({
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

  factory Adult.fromJson(Map<String, dynamic> json) => _$AdultFromJson(json);

  Map<String, dynamic> toJson() => _$AdultToJson(this);

  Adult copyWith({
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
    return Adult(
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
