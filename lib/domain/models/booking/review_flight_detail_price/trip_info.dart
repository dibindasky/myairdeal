import 'package:json_annotation/json_annotation.dart';

import '../../search/flight_sort_response_model/si.dart';
import 'total_price_list.dart';

part 'trip_info.g.dart';

@JsonSerializable()
class TripInfo {
  List<SI>? sI;
  List<TotalPriceList>? totalPriceList;

  TripInfo({this.sI, this.totalPriceList});

  factory TripInfo.fromJson(Map<String, dynamic> json) {
    return _$TripInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TripInfoToJson(this);

  TripInfo copyWith({
    List<SI>? sI,
    List<TotalPriceList>? totalPriceList,
  }) {
    return TripInfo(
      sI: sI ?? this.sI,
      totalPriceList: totalPriceList ?? this.totalPriceList,
    );
  }
}
