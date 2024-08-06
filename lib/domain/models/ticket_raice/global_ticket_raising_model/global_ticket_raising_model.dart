import 'package:json_annotation/json_annotation.dart';

part 'global_ticket_raising_model.g.dart';

@JsonSerializable()
class GlobalTicketRaisingModel {
  String? type;
  String? bookingId;
  String? heading;
  String? description;
  String? product;

  GlobalTicketRaisingModel({
    this.type,
    this.bookingId,
    this.heading,
    this.description,
    this.product,
  });

  factory GlobalTicketRaisingModel.fromJson(Map<String, dynamic> json) {
    return _$GlobalTicketRaisingModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GlobalTicketRaisingModelToJson(this);
}
