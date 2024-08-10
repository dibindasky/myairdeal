import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/payment.dart';

import '../../search/flight_search_sort_model/flight_search_query.dart';
import 'booking.dart';

part 'book_ticket_model.g.dart';

@JsonSerializable()
class BookTicketModel {
  Booking? booking;
  FlightSearchQuery? searchQuery;
  Payment? payment;

  BookTicketModel({this.booking, this.searchQuery, this.payment});

  factory BookTicketModel.fromJson(Map<String, dynamic> json) {
    return _$BookTicketModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BookTicketModelToJson(this);

  BookTicketModel copyWith({
    Booking? booking,
    Payment? payment,
    FlightSearchQuery? searchQuery,
  }) {
    return BookTicketModel(
      payment: payment ?? this.payment,
      booking: booking ?? this.booking,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }

  @override
  String toString() {
    return 'BookTicketModel{booking: ${booking.toString()}, searchQuery: $searchQuery}';
  }
}
