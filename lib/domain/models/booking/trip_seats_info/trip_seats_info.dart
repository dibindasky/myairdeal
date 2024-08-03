import 'package:json_annotation/json_annotation.dart';

import 's_data.dart';
import 's_info.dart';

part 'trip_seats_info.g.dart';

@JsonSerializable()
class TripSeatsInfo {
  SData? sData;
  List<SInfo>? sInfo;
  String? nt;

  TripSeatsInfo({this.sData, this.sInfo, this.nt});

  factory TripSeatsInfo.fromJson(Map<String, dynamic> json) {
    return _$TripSeatsInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TripSeatsInfoToJson(this);

  TripSeatsInfo copyWith({
    SData? sData,
    List<SInfo>? sInfo,
    String? nt,
  }) {
    return TripSeatsInfo(
      sData: sData ?? this.sData,
      sInfo: sInfo ?? this.sInfo,
      nt: nt ?? this.nt,
    );
  }
}
