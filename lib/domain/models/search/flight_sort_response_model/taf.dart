import 'package:json_annotation/json_annotation.dart';

part 'taf.g.dart';

@JsonSerializable()
class Taf {
  @JsonKey(name: 'YQ')
  int? yq;
  @JsonKey(name: 'YR')
  int? yr;
  @JsonKey(name: 'MFT')
  double? mft;
  @JsonKey(name: 'OT')
  int? ot;
  @JsonKey(name: 'MF')
  int? mf;
  @JsonKey(name: 'AGST')
  int? agst;

  Taf({this.yq, this.mft, this.ot, this.mf, this.agst, this.yr});

  factory Taf.fromJson(Map<String, dynamic> json) => _$TafFromJson(json);

  Map<String, dynamic> toJson() => _$TafToJson(this);

  Taf copyWith({
    int? yq,
    double? mft,
    int? ot,
    int? mf,
    int? agst,
    int? yr,
  }) {
    return Taf(
      yq: yq ?? this.yq,
      yr: yr ?? this.yr,
      mft: mft ?? this.mft,
      ot: ot ?? this.ot,
      mf: mf ?? this.mf,
      agst: agst ?? this.agst,
    );
  }
}
