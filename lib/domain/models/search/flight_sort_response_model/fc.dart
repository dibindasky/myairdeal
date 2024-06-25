import 'package:json_annotation/json_annotation.dart';

part 'fc.g.dart';

@JsonSerializable()
class FC {
  @JsonKey(name: 'TAF')
  int? taf;
  @JsonKey(name: 'NF')
  int? nf;
  @JsonKey(name: 'TF')
  int? tf;
  @JsonKey(name: 'BF')
  int? bf;

  FC({this.taf, this.nf, this.tf, this.bf});

  factory FC.fromJson(Map<String, dynamic> json) => _$FCFromJson(json);

  Map<String, dynamic> toJson() => _$FCToJson(this);

  FC copyWith({
    int? taf,
    int? nf,
    int? tf,
    int? bf,
  }) {
    return FC(
      taf: taf ?? this.taf,
      nf: nf ?? this.nf,
      tf: tf ?? this.tf,
      bf: bf ?? this.bf,
    );
  }
}
