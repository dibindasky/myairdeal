import 'package:json_annotation/json_annotation.dart';

import 'si.dart';

part 'trip_info.g.dart';

@JsonSerializable()
class TripInfo {
  List<Si>? sI;

  TripInfo({this.sI});

  factory TripInfo.fromJson(Map<String, dynamic> json) {
    return _$TripInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TripInfoToJson(this);
}
