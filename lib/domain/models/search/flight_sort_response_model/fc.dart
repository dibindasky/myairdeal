import 'package:json_annotation/json_annotation.dart';

part 'fc.g.dart';

@JsonSerializable()
class Fc {
  @JsonKey(name: 'BF')
  int? bf;
  @JsonKey(name: 'TF')
  double? tf;
  @JsonKey(name: 'NF')
  double? nf;
  @JsonKey(name: 'TAF')
  double? taf;

  Fc({this.bf, this.tf, this.nf, this.taf});

  factory Fc.fromJson(Map<String, dynamic> json) => _$FcFromJson(json);

  Map<String, dynamic> toJson() => _$FcToJson(this);

  Fc copyWith({
    int? bf,
    double? tf,
    double? nf,
    double? taf,
  }) {
    return Fc(
      bf: bf ?? this.bf,
      tf: tf ?? this.tf,
      nf: nf ?? this.nf,
      taf: taf ?? this.taf,
    );
  }

  static const colLocalId = 'local_id';
  static const colPayTypeId = 'paytype_id';
  static const colBF = 'bf';
  static const colTF = 'tf';
  static const colNF = 'nf';
  static const colTAF = 'taf';
}
