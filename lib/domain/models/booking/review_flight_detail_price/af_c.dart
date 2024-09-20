import 'package:json_annotation/json_annotation.dart';

import 'taf.dart';

part 'af_c.g.dart';

@JsonSerializable()
class AfC {
  @JsonKey(name: 'TAF')
  Taf? taf;
  @JsonKey(name: 'TAF')
  Map<String, dynamic>? tafMAP;

  AfC({this.taf, this.tafMAP});

  factory AfC.fromJson(Map<String, dynamic> json) => _$AfCFromJson(json);

  Map<String, dynamic> toJson() => _$AfCToJson(this);

  AfC copyWith({
    Taf? taf,
    Map<String, dynamic>? tafMAP,
  }) {
    return AfC(
      taf: taf ?? this.taf,
      tafMAP: tafMAP ?? this.tafMAP,
    );
  }
}
