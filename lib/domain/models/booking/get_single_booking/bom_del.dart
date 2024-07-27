import 'package:json_annotation/json_annotation.dart';

part 'bom_del.g.dart';

@JsonSerializable()
class BomDel {
  String? code;
  int? amount;
  String? desc;

  BomDel({this.code, this.amount, this.desc});

  factory BomDel.fromJson(Map<String, dynamic> json) {
    return _$BomDelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BomDelToJson(this);
}
