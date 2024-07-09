import 'package:json_annotation/json_annotation.dart';

part 'bi.g.dart';

@JsonSerializable()
class Bi {
  String? iB;
  String? cB;

  Bi({this.iB, this.cB});

  factory Bi.fromJson(Map<String, dynamic> json) => _$BiFromJson(json);

  Map<String, dynamic> toJson() => _$BiToJson(this);

  Bi copyWith({
    String? iB,
    String? cB,
  }) {
    return Bi(
      iB: iB ?? this.iB,
      cB: cB ?? this.cB,
    );
  }
}
