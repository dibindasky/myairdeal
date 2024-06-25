import 'package:json_annotation/json_annotation.dart';

part 'bi.g.dart';

@JsonSerializable()
class BI {
  String? iB;
  String? cB;

  BI({this.iB, this.cB});

  factory BI.fromJson(Map<String, dynamic> json) => _$BIFromJson(json);

  Map<String, dynamic> toJson() => _$BIToJson(this);

  BI copyWith({
    String? iB,
    String? cB,
  }) {
    return BI(
      iB: iB ?? this.iB,
      cB: cB ?? this.cB,
    );
  }
}
