import 'package:json_annotation/json_annotation.dart';

import 'air.dart';

part 'item_infos.g.dart';

@JsonSerializable()
class ItemInfos {
  @JsonKey(name: 'AIR')
  Air? air;

  ItemInfos({this.air});

  factory ItemInfos.fromJson(Map<String, dynamic> json) {
    return _$ItemInfosFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ItemInfosToJson(this);
}
