import 'package:json_annotation/json_annotation.dart';

part 'ticket_number_details.g.dart';

@JsonSerializable()
class TicketNumberDetails {
  @JsonKey(name: 'BLR-BOM')
  String? blrBom;

  TicketNumberDetails({this.blrBom});

  factory TicketNumberDetails.fromJson(Map<String, dynamic> json) {
    return _$TicketNumberDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketNumberDetailsToJson(this);
}
