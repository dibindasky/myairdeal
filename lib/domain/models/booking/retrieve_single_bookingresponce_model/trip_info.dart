import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/si.dart';

part 'trip_info.g.dart';

@JsonSerializable()
class TripInfo {
  List<SI>? sI;

  TripInfo({this.sI});

  factory TripInfo.fromJson(Map<String, dynamic> json) {
    return _$TripInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TripInfoToJson(this);
}
