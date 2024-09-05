import 'package:json_annotation/json_annotation.dart';

part 'checkin_status_map.g.dart';

@JsonSerializable()
class CheckinStatusMap {
  @JsonKey(name: 'AUH-BLR')
  bool? auhBlr;
  @JsonKey(name: 'XNB-AUH')
  bool? xnbAuh;
  @JsonKey(name: 'BLR-HYD')
  bool? blrHyd;

  CheckinStatusMap({this.auhBlr, this.xnbAuh, this.blrHyd});

  factory CheckinStatusMap.fromJson(Map<String, dynamic> json) {
    return _$CheckinStatusMapFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CheckinStatusMapToJson(this);
}
