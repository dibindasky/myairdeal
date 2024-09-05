import 'package:json_annotation/json_annotation.dart';

part 'ticket_number_details.g.dart';

@JsonSerializable()
class TicketNumberDetails {
  @JsonKey(name: 'XNB-AUH')
  String? xnbAuh;
  @JsonKey(name: 'AUH-BLR')
  String? auhBlr;
  @JsonKey(name: 'BLR-HYD')
  String? blrHyd;

  TicketNumberDetails({this.xnbAuh, this.auhBlr, this.blrHyd});

  factory TicketNumberDetails.fromJson(Map<String, dynamic> json) {
    return _$TicketNumberDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketNumberDetailsToJson(this);
}
