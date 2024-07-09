import 'package:json_annotation/json_annotation.dart';

import 'af_c.dart';
import 'fc.dart';

part 'total_fare_detail.g.dart';

@JsonSerializable()
class TotalFareDetail {
  Fc? fC;
  AfC? afC;

  TotalFareDetail({this.fC, this.afC});

  factory TotalFareDetail.fromJson(Map<String, dynamic> json) {
    return _$TotalFareDetailFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TotalFareDetailToJson(this);

  TotalFareDetail copyWith({
    Fc? fC,
    AfC? afC,
  }) {
    return TotalFareDetail(
      fC: fC ?? this.fC,
      afC: afC ?? this.afC,
    );
  }
}
