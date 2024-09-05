import 'package:json_annotation/json_annotation.dart';

part 'pnr_details.g.dart';

@JsonSerializable()
class PnrDetails {
  @JsonKey(name: 'XNB-AUH')
  String? xnbAuh;
  @JsonKey(name: 'AUH-BLR')
  String? auhBlr;
  @JsonKey(name: 'BLR-HYD')
  String? blrHyd;

  PnrDetails({this.xnbAuh, this.auhBlr, this.blrHyd});

  factory PnrDetails.fromJson(Map<String, dynamic> json) {
    return _$PnrDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PnrDetailsToJson(this);
}
