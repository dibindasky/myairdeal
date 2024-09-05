import 'package:json_annotation/json_annotation.dart';

part 'taf.g.dart';

@JsonSerializable()
class Taf {
  @JsonKey(name: 'OT')
  int? ot;

  Taf({this.ot});

  factory Taf.fromJson(Map<String, dynamic> json) => _$TafFromJson(json);

  Map<String, dynamic> toJson() => _$TafToJson(this);
}
