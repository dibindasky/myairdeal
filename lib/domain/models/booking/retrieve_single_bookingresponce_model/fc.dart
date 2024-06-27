import 'package:json_annotation/json_annotation.dart';

part 'fc.g.dart';

@JsonSerializable()
class Fc {
  @JsonKey(name: 'BF')
  int? bf;
  @JsonKey(name: 'NF')
  int? nf;
  @JsonKey(name: 'TF')
  int? tf;
  @JsonKey(name: 'TAF')
  int? taf;

  Fc({this.bf, this.nf, this.tf, this.taf});

  factory Fc.fromJson(Map<String, dynamic> json) => _$FcFromJson(json);

  Map<String, dynamic> toJson() => _$FcToJson(this);
}
