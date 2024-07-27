import 'package:json_annotation/json_annotation.dart';

import 'delivery_info.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  String? bookingId;
  int? amount;
  int? markup;
  DeliveryInfo? deliveryInfo;
  String? status;
  DateTime? createdOn;

  Order({
    this.bookingId,
    this.amount,
    this.markup,
    this.deliveryInfo,
    this.status,
    this.createdOn,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
