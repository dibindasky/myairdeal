import 'package:json_annotation/json_annotation.dart';

part 'ssrp.g.dart';

@JsonSerializable()
class Ssrp {
  @JsonKey(name: 'OT')
  int? ot;

  Ssrp({this.ot});

  factory Ssrp.fromJson(Map<String, dynamic> json) => _$SsrpFromJson(json);

  Map<String, dynamic> toJson() => _$SsrpToJson(this);
}
