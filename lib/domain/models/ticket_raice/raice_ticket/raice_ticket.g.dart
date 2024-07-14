part of 'raice_ticket.dart';

RaiceTicket _$RaiceTicketFromJson(Map<String, dynamic> json) {
  return RaiceTicket(
    bookingId: json['bookingId'] as String?,
    heading: json['heading'] as String?,
    description: json['description'] as String?,
    product: json['product'] as String?,
  );
}

Map<String, dynamic> _$RaiceTicketToJson(RaiceTicket instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'heading': instance.heading,
      'description': instance.description,
      'product': instance.product,
    };
