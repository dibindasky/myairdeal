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
  String? promo;

  BookTicketModel({this.booking, this.searchQuery, this.payment, this.promo});

  factory BookTicketModel.fromJson(Map<String, dynamic> json) {
    return _$BookTicketModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BookTicketModelToJson(this);
  
  Map<String, dynamic> toJsonHold() => {
        'booking': booking?.toJson(),
        'searchQuery': searchQuery?.toJson(),
      };

  BookTicketModel copyWith({
    Booking? booking,
    Payment? payment,
    FlightSearchQuery? searchQuery,
    String? promo,
  }) {
    return BookTicketModel(
      payment: payment ?? this.payment,
      booking: booking ?? this.booking,
      searchQuery: searchQuery ?? this.searchQuery,
      promo: promo ?? this.promo,
    );
  }

  @override
  String toString() {
    return 'BookTicketModel{booking: ${booking.toString()}, searchQuery: $searchQuery, promo: $promo}';
  }
}
