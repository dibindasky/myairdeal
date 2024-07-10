import 'package:json_annotation/json_annotation.dart';

part 'dob.g.dart';

@JsonSerializable()
class Dob {
  bool? adobr;
  bool? cdobr;
  bool? idobr;

  Dob({this.adobr, this.cdobr, this.idobr});

  factory Dob.fromJson(Map<String, dynamic> json) => _$DobFromJson(json);

  Map<String, dynamic> toJson() => _$DobToJson(this);

  Dob copyWith({
    bool? adobr,
    bool? cdobr,
    bool? idobr,
  }) {
    return Dob(
      adobr: adobr ?? this.adobr,
      cdobr: cdobr ?? this.cdobr,
      idobr: idobr ?? this.idobr,
    );
  }
}
