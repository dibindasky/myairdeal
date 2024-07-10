import 'package:json_annotation/json_annotation.dart';

import 'trip.dart';

part 'ticket_cancel_request_model.g.dart';

@JsonSerializable()
class TicketCancelRequestModel {
  String? bookingId;
  String? type;
  List<Trip>? trips;

  TicketCancelRequestModel({this.bookingId, this.type, this.trips});

  factory TicketCancelRequestModel.fromJson(Map<String, dynamic> json) {
    return _$TicketCancelRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketCancelRequestModelToJson(this);
}