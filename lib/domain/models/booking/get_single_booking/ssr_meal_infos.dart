import 'package:json_annotation/json_annotation.dart';

import 'bom_del.dart';
import 'cok_bom.dart';

part 'ssr_meal_infos.g.dart';

@JsonSerializable()
class SsrMealInfos {
  @JsonKey(name: 'COK-BOM')
  CokBom? cokBom;
  @JsonKey(name: 'BOM-DEL')
  BomDel? bomDel;

  SsrMealInfos({this.cokBom, this.bomDel});

  factory SsrMealInfos.fromJson(Map<String, dynamic> json) {
    return _$SsrMealInfosFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SsrMealInfosToJson(this);
}
