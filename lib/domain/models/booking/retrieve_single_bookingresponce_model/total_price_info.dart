import 'package:json_annotation/json_annotation.dart';

import 'total_fare_detail.dart';

part 'total_price_info.g.dart';

@JsonSerializable()
class TotalPriceInfo {
  TotalFareDetail? totalFareDetail;

  TotalPriceInfo({this.totalFareDetail});

  factory TotalPriceInfo.fromJson(Map<String, dynamic> json) {
    return _$TotalPriceInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TotalPriceInfoToJson(this);
}
