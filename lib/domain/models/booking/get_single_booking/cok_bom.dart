import 'package:json_annotation/json_annotation.dart';

part 'cok_bom.g.dart';

@JsonSerializable()
class CokBom {
  String? code;
  int? amount;
  String? desc;

  CokBom({this.code, this.amount, this.desc});

  factory CokBom.fromJson(Map<String, dynamic> json) {
    return _$CokBomFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CokBomToJson(this);
}
