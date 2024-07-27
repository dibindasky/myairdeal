import 'package:json_annotation/json_annotation.dart';

import 'ssrp.dart';
import 'taf.dart';

part 'af_c.g.dart';

@JsonSerializable()
class AfC {
  @JsonKey(name: 'TAF')
  Taf? taf;
  @JsonKey(name: 'SSRP')
  Ssrp? ssrp;

  AfC({this.taf, this.ssrp});

  factory AfC.fromJson(Map<String, dynamic> json) => _$AfCFromJson(json);

  Map<String, dynamic> toJson() => _$AfCToJson(this);
}
