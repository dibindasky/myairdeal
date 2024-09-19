import 'package:json_annotation/json_annotation.dart';

part 'fc.g.dart';

@JsonSerializable()
class Fc {
  @JsonKey(name: 'NF')
  num? nf;
  @JsonKey(name: 'BF')
  num? bf;
  @JsonKey(name: 'TAF')
  num? taf;
  @JsonKey(name: 'TF')
  num? tf;

  Fc({this.nf, this.bf, this.taf, this.tf});

  factory Fc.fromJson(Map<String, dynamic> json) => _$FcFromJson(json);

  Map<String, dynamic> toJson() => _$FcToJson(this);

  Fc copyWith({
    num? nf,
    num? bf,
    num? taf,
    num? tf,
  }) {
    return Fc(
      nf: nf ?? this.nf,
      bf: bf ?? this.bf,
      taf: taf ?? this.taf,
      tf: tf ?? this.tf,
    );
  }
}
