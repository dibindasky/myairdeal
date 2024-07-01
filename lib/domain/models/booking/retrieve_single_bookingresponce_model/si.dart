import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/fd.dart';

import 'aa.dart';
import 'da.dart';

part 'si.g.dart';

@JsonSerializable()
class Si {
  String? id;
  FD? fD;
  int? stops;
  int? duration;
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
