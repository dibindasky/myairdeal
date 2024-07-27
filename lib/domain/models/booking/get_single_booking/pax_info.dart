import 'package:json_annotation/json_annotation.dart';

part 'pax_info.g.dart';

@JsonSerializable()
class PaxInfo {
  @JsonKey(name: 'ADULT')
  int? adult;
  @JsonKey(name: 'CHILD')
  int? child;
  @JsonKey(name: 'INFANT')
  int? infant;

  PaxInfo({this.adult, this.child, this.infant});

  factory PaxInfo.fromJson(Map<String, dynamic> json) {
    return _$PaxInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaxInfoToJson(this);
}
