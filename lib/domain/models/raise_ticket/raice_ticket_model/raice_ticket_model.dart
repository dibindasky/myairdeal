import 'package:json_annotation/json_annotation.dart';

part 'raice_ticket_model.g.dart';

@JsonSerializable()
class RaiceTicketModel {
  String? bookingId;
  String? heading;
  String? description;
  String? product;

  RaiceTicketModel({
    this.bookingId,
    this.heading,
    this.description,
    this.product,
  });

  factory RaiceTicketModel.fromJson(Map<String, dynamic> json) {
    return _$RaiceTicketModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RaiceTicketModelToJson(this);
}
