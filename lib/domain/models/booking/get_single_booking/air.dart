import 'package:json_annotation/json_annotation.dart';

import 'total_price_info.dart';
import 'traveller_info.dart';
import 'trip_info.dart';

part 'air.g.dart';

@JsonSerializable()
class Air {
  List<TripInfo>? tripInfos;
  List<TravellerInfo>? travellerInfos;
  TotalPriceInfo? totalPriceInfo;

  Air({this.tripInfos, this.travellerInfos, this.totalPriceInfo});

  factory Air.fromJson(Map<String, dynamic> json) => _$AirFromJson(json);

  Map<String, dynamic> toJson() => _$AirToJson(this);
}
