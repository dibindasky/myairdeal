import 'package:json_annotation/json_annotation.dart';

part 'ticket_number_details.g.dart';

@JsonSerializable()
class TicketNumberDetails {
  @JsonKey(name: 'COK-BOM')
  String? cokBom;
  @JsonKey(name: 'BOM-DEL')
  String? bomDel;

  TicketNumberDetails({this.cokBom, this.bomDel});

  factory TicketNumberDetails.fromJson(Map<String, dynamic> json) {
    return _$TicketNumberDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketNumberDetailsToJson(this);
}
