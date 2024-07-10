import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_responce/errors.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/status.dart';

part 'ticket_cancel_responce.g.dart';

@JsonSerializable()
class TicketCancelResponce {
  String? bookingId;
  String? amendmentId;
  Status? status;
  Errors? errors;

  TicketCancelResponce({this.bookingId, this.amendmentId, this.status});

  factory TicketCancelResponce.fromJson(Map<String, dynamic> json) {
    return _$TicketCancelResponceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketCancelResponceToJson(this);
}
