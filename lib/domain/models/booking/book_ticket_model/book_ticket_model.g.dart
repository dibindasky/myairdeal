// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookTicketModel _$BookTicketModelFromJson(Map<String, dynamic> json) =>
    BookTicketModel(
      booking: json['booking'] == null
          ? null
          : Booking.fromJson(json['booking'] as Map<String, dynamic>),
      payment: json['payment'] == null
          ? null
          : Payment.fromJson(json['payment'] as Map<String, dynamic>),
      searchQuery: json['searchQuery'] == null
          ? null
          : FlightSearchQuery.fromJson(
              json['searchQuery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookTicketModelToJson(BookTicketModel instance) =>
    <String, dynamic>{
      'payment': instance.payment,
      'booking': instance.booking,
      'searchQuery': instance.searchQuery,
      'promo': instance.promo,
    };

Map<String, dynamic> _$BookTicketModelToJsonHold(BookTicketModel instance) =>
    <String, dynamic>{
      'booking': instance.booking,
      'searchQuery': instance.searchQuery,
    };
