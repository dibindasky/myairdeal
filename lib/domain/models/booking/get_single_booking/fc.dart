import 'package:json_annotation/json_annotation.dart';

part 'fc.g.dart';

@JsonSerializable()
class Fc {
  @JsonKey(name: 'TAF')
  int? taf;
  @JsonKey(name: 'AFS')
  int? afs;
  @JsonKey(name: 'AAR')
  int? aar;
  @JsonKey(name: 'SSRP')
  int? ssrp;
  @JsonKey(name: 'BF')
  int? bf;
  @JsonKey(name: 'TF')
  int? tf;
  @JsonKey(name: 'NF')
  int? nf;

  Fc({this.taf, this.ssrp, this.bf, this.tf, this.nf, this.aar, this.afs});

  factory Fc.fromJson(Map<String, dynamic> json) => _$FcFromJson(json);

  Map<String, dynamic> toJson() => _$FcToJson(this);
}
