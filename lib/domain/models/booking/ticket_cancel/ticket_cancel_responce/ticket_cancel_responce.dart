import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/status.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_responce/error.dart';
part 'ticket_cancel_responce.g.dart';

@JsonSerializable()
class TicketCancelResponce {
  String? bookingId;
  String? amendmentId;
  Status? status;
  List<Error>? errors;

  TicketCancelResponce(
      {this.bookingId, this.amendmentId, this.status, this.errors});

  factory TicketCancelResponce.fromJson(Map<String, dynamic> json) {
    return _$TicketCancelResponceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketCancelResponceToJson(this);
}
