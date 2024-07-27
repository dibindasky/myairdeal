import 'package:json_annotation/json_annotation.dart';

import 'delivery_info.dart';
import 'gst_info.dart';
import 'payment_info.dart';
import 'traveller_info.dart';

part 'booking.g.dart';

@JsonSerializable()
class Booking {
  String? bookingId;
  List<PaymentInfo>? paymentInfos;
  List<TravellerInfo>? travellerInfo;
  GstInfo? gstInfo;
  DeliveryInfo? deliveryInfo;

  Booking({
    this.bookingId,
    this.paymentInfos,
    this.travellerInfo,
    this.gstInfo,
    this.deliveryInfo,
  });

  factory Booking.fromJson(Map<String, dynamic> json) {
    return _$BookingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BookingToJson(this);

  Booking copyWith({
    String? bookingId,
    List<PaymentInfo>? paymentInfos,
    List<TravellerInfo>? travellerInfo,
    GstInfo? gstInfo,
    DeliveryInfo? deliveryInfo,
  }) {
    return Booking(
      bookingId: bookingId ?? this.bookingId,
      paymentInfos: paymentInfos ?? this.paymentInfos,
      travellerInfo: travellerInfo ?? this.travellerInfo,
      gstInfo: gstInfo ?? this.gstInfo,
      deliveryInfo: deliveryInfo ?? this.deliveryInfo,
    );
  }

  @override
  String toString() {
    return 'Booking{bookingId: $bookingId, paymentInfos: ${paymentInfos?.map((e) => e.toString()).toList()}, travellerInfo: ${travellerInfo?.map((e) => e.toString()).toList()}, gstInfo: ${gstInfo.toString()}, deliveryInfo: ${deliveryInfo.toString()}}';
  }
}
