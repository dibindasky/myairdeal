import 'package:json_annotation/json_annotation.dart';

part 'checkin_status_map.g.dart';

@JsonSerializable()
class CheckinStatusMap {
  @JsonKey(name: 'BLR-BOM')
  bool? blrBom;

  CheckinStatusMap({this.blrBom});

  factory CheckinStatusMap.fromJson(Map<String, dynamic> json) {
    return _$CheckinStatusMapFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CheckinStatusMapToJson(this);
}
