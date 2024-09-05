import 'package:json_annotation/json_annotation.dart';

part 'fc.g.dart';

@JsonSerializable()
class Fc {
  @JsonKey(name: 'TF')
  int? tf;
  @JsonKey(name: 'BF')
  int? bf;
  @JsonKey(name: 'TAF')
  int? taf;
  @JsonKey(name: 'NF')
  int? nf;

  Fc({this.tf, this.bf, this.taf, this.nf});

  factory Fc.fromJson(Map<String, dynamic> json) => _$FcFromJson(json);

  Map<String, dynamic> toJson() => _$FcToJson(this);
}
