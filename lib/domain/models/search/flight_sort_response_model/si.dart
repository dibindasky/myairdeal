import 'package:json_annotation/json_annotation.dart';

import '../../booking/review_flight_detail_price/ssr_info.dart';
import 'aa.dart';
import 'da.dart';
import 'fd.dart';

part 'si.g.dart';

@JsonSerializable()
class SI {
  String? id;
  FD? fD;
  int? stops;
  List<dynamic>? so;
  int? duration;
  int? cT;
  Da? da;
  Aa? aa;
  String? oaa;
  String? dt;
  String? at;
  bool? iand;
  bool? isRs;
  int? sN;
  @JsonKey(name: 'ssrInfo')
  SsrInfo? ssrInfo;

  SI(
      {this.id,
      this.fD,
      this.stops,
      this.so,
      this.duration,
      this.cT,
      this.da,
      this.aa,
      this.oaa,
      this.dt,
      this.at,
      this.iand,
      this.isRs,
      this.sN,
      this.ssrInfo});

  factory SI.fromJson(Map<String, dynamic> json) => _$SIFromJson(json);

  Map<String, dynamic> toJson() => _$SIToJson(this);

  SI copyWith({
    String? id,
    FD? fD,
    int? stops,
    List<dynamic>? so,
    int? duration,
    int? cT,
    Da? da,
    Aa? aa,
    String? oaa,
    String? dt,
    String? at,
    bool? iand,
    bool? isRs,
    int? sN,
    SsrInfo? ssrInfo,
  }) {
    return SI(
      id: id ?? this.id,
      fD: fD ?? this.fD,
      stops: stops ?? this.stops,
      so: so ?? this.so,
      duration: duration ?? this.duration,
      cT: cT ?? this.cT,
      da: da ?? this.da,
      aa: aa ?? this.aa,
      oaa: oaa ?? this.oaa,
      dt: dt ?? this.dt,
      at: at ?? this.at,
      iand: iand ?? this.iand,
      isRs: isRs ?? this.isRs,
      sN: sN ?? this.sN,
      ssrInfo: ssrInfo ?? this.ssrInfo,
    );
  }
}
