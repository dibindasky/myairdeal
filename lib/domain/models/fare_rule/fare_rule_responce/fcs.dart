import 'package:json_annotation/json_annotation.dart';

part 'fcs.g.dart';

@JsonSerializable()
class Fcs {
  @JsonKey(name: 'ARF')
  int? arf;
  @JsonKey(name: 'ARFT')
  int? arft;

  Fcs({this.arf, this.arft});

  factory Fcs.fromJson(Map<String, dynamic> json) => _$FcsFromJson(json);

  Map<String, dynamic> toJson() => _$FcsToJson(this);
}
