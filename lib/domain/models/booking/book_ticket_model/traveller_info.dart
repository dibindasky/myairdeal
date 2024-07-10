import 'package:json_annotation/json_annotation.dart';

part 'traveller_info.g.dart';

@JsonSerializable()
class TravellerInfo {
  String? ti;
  String? fN;
  String? lN;
  String? pt;
  String? dob;

  TravellerInfo({this.ti, this.fN, this.lN, this.pt, this.dob});

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
  }) {
    return TravellerInfo(
      ti: ti ?? this.ti,
      fN: fN ?? this.fN,
      lN: lN ?? this.lN,
      pt: pt ?? this.pt,
      dob: dob ?? this.dob,
    );
  }
}