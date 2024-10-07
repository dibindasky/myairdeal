import 'package:json_annotation/json_annotation.dart';

part 'taf.g.dart';

@JsonSerializable()
class Taf {
  @JsonKey(name: 'AGST')
  num? agst;
  @JsonKey(name: 'YR')
  num? yr;
  @JsonKey(name: 'YQ')
  num? yq;
  @JsonKey(name: 'OT')
  num? ot;

  Taf({this.agst, this.yr, this.ot, this.yq});

  factory Taf.fromJson(Map<String, dynamic> json) => _$TafFromJson(json);

  Map<String, dynamic> toJson() => _$TafToJson(this);

  Taf copyWith({
    num? agst,
    num? yr,
    num? ot,
    num? yq,
  }) {
    return Taf(
      agst: agst ?? this.agst,
      yr: yr ?? this.yr,
      yq: yq ?? this.yq,
      ot: ot ?? this.ot,
    );
  }
}
