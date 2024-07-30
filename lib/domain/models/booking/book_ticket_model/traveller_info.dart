import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/ssr_info.dart';

part 'traveller_info.g.dart';

@JsonSerializable()
class TravellerInfo {
  String? ti;
  String? fN;
  String? lN;
  String? pt;
  String? dob;
  String? pNum;
  String? eD;
  String? pid;
  String? pN;
  @JsonKey(name: 'ssrMealInfos')
  List<SsrInfo>? ssrMealInfos;
  @JsonKey(name: 'ssrSeatInfos')
  List<SsrInfo>? ssrSeatInfos;
  @JsonKey(name: 'ssrBaggageInfos')
  List<SsrInfo>? ssrBaggageInfos;

  TravellerInfo({
    this.ti,
    this.fN,
    this.lN,
    this.pt,
    this.dob,
    this.eD,
    this.pN,
    this.pNum,
    this.pid,
    this.ssrBaggageInfos,
    this.ssrMealInfos,
    this.ssrSeatInfos,
  });

  factory TravellerInfo.fromJson(Map<String, dynamic> json) {
    return _$TravellerInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TravellerInfoToJson(this);

  TravellerInfo copyWith({
    String? ti,
    String? fN,
    String? lN,
    String? pt,
    String? dob,
    String? pNum,
    String? eD,
    String? pid,
    List<SsrInfo>? ssrMealInfos,
    List<SsrInfo>? ssrSeatInfos,
    List<SsrInfo>? ssrBaggageInfos,
  }) {
    return TravellerInfo(
      ti: ti ?? this.ti,
      fN: fN ?? this.fN,
      lN: lN ?? this.lN,
      pt: pt ?? this.pt,
      dob: dob ?? this.dob,
      eD: eD ?? this.eD,
      pid: pid ?? this.pid,
      pNum: pNum ?? this.pNum,
      ssrBaggageInfos: ssrBaggageInfos ?? this.ssrBaggageInfos,
      ssrSeatInfos: ssrSeatInfos ?? this.ssrSeatInfos,
      ssrMealInfos: ssrMealInfos ?? this.ssrMealInfos,
    );
  }

  @override
  String toString() {
    return 'TravellerInfo{ti: $ti, fN: $fN, lN: $lN, pt: $pt, dob: $dob, pNum: $pNum, eD: $eD, pid: $pid, ssrMealInfos: ${ssrMealInfos?.map((e) => e.toString()).toList()}, ssrSeatInfos: ${ssrSeatInfos?.map((e) => e.toString()).toList()}, ssrBaggageInfos: ${ssrBaggageInfos?.map((e) => e.toString()).toList()}}';
  }

  String getName() {
    return '${ti ?? ''} ${fN ?? ''} ${lN ?? ''}';
  }
}
