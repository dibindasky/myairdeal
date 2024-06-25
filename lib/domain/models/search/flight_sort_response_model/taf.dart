import 'package:json_annotation/json_annotation.dart';

part 'taf.g.dart';

@JsonSerializable()
class Taf {
  @JsonKey(name: 'YR')
  int? yr;
  @JsonKey(name: 'OT')
  int? ot;
  @JsonKey(name: 'MU')
  int? mu;
  @JsonKey(name: 'AGST')
  int? agst;

  Taf({this.yr, this.ot, this.mu, this.agst});

  factory Taf.fromJson(Map<String, dynamic> json) => _$TafFromJson(json);

  Map<String, dynamic> toJson() => _$TafToJson(this);

  Taf copyWith({
    int? yr,
    int? ot,
    int? mu,
    int? agst,
  }) {
    return Taf(
      yr: yr ?? this.yr,
      ot: ot ?? this.ot,
      mu: mu ?? this.mu,
      agst: agst ?? this.agst,
    );
  }
}
