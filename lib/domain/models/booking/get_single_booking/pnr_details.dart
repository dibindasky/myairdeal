import 'package:json_annotation/json_annotation.dart';

part 'pnr_details.g.dart';

@JsonSerializable()
class PnrDetails {
  @JsonKey(name: 'COK-BOM')
  String? cokBom;
  @JsonKey(name: 'BOM-DEL')
  String? bomDel;

  PnrDetails({this.cokBom, this.bomDel});

  factory PnrDetails.fromJson(Map<String, dynamic> json) {
    return _$PnrDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PnrDetailsToJson(this);
}
