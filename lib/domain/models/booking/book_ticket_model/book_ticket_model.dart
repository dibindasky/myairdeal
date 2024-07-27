import 'package:json_annotation/json_annotation.dart';

import '../../search/flight_search_sort_model/flight_search_query.dart';
import 'booking.dart';

part 'book_ticket_model.g.dart';

@JsonSerializable()
class BookTicketModel {
  Booking? booking;
  FlightSearchQuery? searchQuery;

  BookTicketModel({this.booking, this.searchQuery});

  factory BookTicketModel.fromJson(Map<String, dynamic> json) {
    return _$BookTicketModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BookTicketModelToJson(this);

  BookTicketModel copyWith({
    Booking? booking,
    FlightSearchQuery? searchQuery,
  }) {
    return BookTicketModel(
      booking: booking ?? this.booking,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }

  @override
  String toString() {
    return 'BookTicketModel{booking: ${booking.toString()}, searchQuery: $searchQuery}';
  }
}
