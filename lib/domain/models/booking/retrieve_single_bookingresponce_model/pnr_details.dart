import 'package:json_annotation/json_annotation.dart';

part 'pnr_details.g.dart';

@JsonSerializable()
class PnrDetails {
  @JsonKey(name: 'BLR-BOM')
  String? blrBom;

  PnrDetails({this.blrBom});

  factory PnrDetails.fromJson(Map<String, dynamic> json) {
    return _$PnrDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PnrDetailsToJson(this);
}
