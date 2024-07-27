import 'package:json_annotation/json_annotation.dart';

import 'aa.dart';
import 'da.dart';
import 'fd.dart';

part 'si.g.dart';

@JsonSerializable()
class Si {
  String? id;
  Fd? fD;
  int? stops;
  int? duration;
  int? cT;
  Da? da;
  Aa? aa;
  String? dt;
  String? at;
  bool? iand;
  bool? isRs;
  int? sN;
  bool? israa;

  Si({
    this.id,
    this.fD,
    this.stops,
    this.duration,
    this.cT,
    this.da,
    this.aa,
    this.dt,
    this.at,
    this.iand,
    this.isRs,
    this.sN,
    this.israa,
  });

  factory Si.fromJson(Map<String, dynamic> json) => _$SiFromJson(json);

  Map<String, dynamic> toJson() => _$SiToJson(this);
}
