import 'package:json_annotation/json_annotation.dart';

import 'taf.dart';

part 'af_c.g.dart';

@JsonSerializable()
class AfC {
  @JsonKey(name: 'TAF')
  Taf? taf;

  AfC({this.taf});

  factory AfC.fromJson(Map<String, dynamic> json) => _$AfCFromJson(json);

  Map<String, dynamic> toJson() => _$AfCToJson(this);

  AfC copyWith({
    Taf? taf,
  }) {
    return AfC(
      taf: taf ?? this.taf,
    );
  }

  static const colTAF = 'taf';
}
