import 'package:json_annotation/json_annotation.dart';

part 'fc.g.dart';

@JsonSerializable()
class Fc {
  @JsonKey(name: 'NF')
  int? nf;
  @JsonKey(name: 'BF')
  int? bf;
  @JsonKey(name: 'TAF')
  int? taf;
  @JsonKey(name: 'TF')
  int? tf;

  Fc({this.nf, this.bf, this.taf, this.tf});

  factory Fc.fromJson(Map<String, dynamic> json) => _$FcFromJson(json);

  Map<String, dynamic> toJson() => _$FcToJson(this);

  Fc copyWith({
    int? nf,
    int? bf,
    int? taf,
    int? tf,
  }) {
    return Fc(
      nf: nf ?? this.nf,
      bf: bf ?? this.bf,
      taf: taf ?? this.taf,
      tf: tf ?? this.tf,
    );
  }
}
