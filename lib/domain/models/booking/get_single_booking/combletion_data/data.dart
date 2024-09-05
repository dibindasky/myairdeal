import 'package:json_annotation/json_annotation.dart';
import 'item_infos.dart';
part 'data.g.dart';

@JsonSerializable()
class Data {
  ItemInfos? itemInfos;

  Data({this.itemInfos});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
