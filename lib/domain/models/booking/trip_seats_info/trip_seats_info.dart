import 'package:json_annotation/json_annotation.dart';

import 's_data.dart';
import 's_info.dart';

part 'trip_seats_info.g.dart';

@JsonSerializable()
class TripSeatsInfo {
  SData? sData;
  List<SInfo>? sInfo;

  TripSeatsInfo({this.sData, this.sInfo});

  factory TripSeatsInfo.fromJson(Map<String, dynamic> json) {
    return _$TripSeatsInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TripSeatsInfoToJson(this);

  TripSeatsInfo copyWith({
    SData? sData,
    List<SInfo>? sInfo,
  }) {
    return TripSeatsInfo(
      sData: sData ?? this.sData,
      sInfo: sInfo ?? this.sInfo,
    );
  }
}
