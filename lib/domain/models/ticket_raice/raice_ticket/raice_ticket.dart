import 'package:json_annotation/json_annotation.dart';

part 'raice_ticket.g.dart';

@JsonSerializable()
class RaiceTicket {
  String? bookingId;
  String? heading;
  String? description;
  String? product;

  RaiceTicket({
    this.bookingId,
    this.heading,
    this.description,
    this.product,
  });

  factory RaiceTicket.fromJson(Map<String, dynamic> json) {
    return _$RaiceTicketFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RaiceTicketToJson(this);
}
