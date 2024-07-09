import 'package:json_annotation/json_annotation.dart';

part 'taf.g.dart';

@JsonSerializable()
class Taf {
  @JsonKey(name: 'AGST')
  int? agst;
  @JsonKey(name: 'YR')
  int? yr;
  @JsonKey(name: 'OT')
  int? ot;

  Taf({this.agst, this.yr, this.ot});

  factory Taf.fromJson(Map<String, dynamic> json) => _$TafFromJson(json);

  Map<String, dynamic> toJson() => _$TafToJson(this);

  Taf copyWith({
    int? agst,
    int? yr,
    int? ot,
  }) {
    return Taf(
      agst: agst ?? this.agst,
      yr: yr ?? this.yr,
      ot: ot ?? this.ot,
    );
  }
}
