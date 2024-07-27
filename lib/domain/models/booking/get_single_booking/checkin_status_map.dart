import 'package:json_annotation/json_annotation.dart';

part 'checkin_status_map.g.dart';

@JsonSerializable()
class CheckinStatusMap {
  @JsonKey(name: 'BOM-DEL')
  bool? bomDel;
  @JsonKey(name: 'COK-BOM')
  bool? cokBom;

  CheckinStatusMap({this.bomDel, this.cokBom});

  factory CheckinStatusMap.fromJson(Map<String, dynamic> json) {
    return _$CheckinStatusMapFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CheckinStatusMapToJson(this);
}
