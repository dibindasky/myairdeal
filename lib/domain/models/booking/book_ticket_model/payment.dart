import 'package:json_annotation/json_annotation.dart';

part 'payment.g.dart';

@JsonSerializable()
class Payment {
  String? razorpayOrderId;
  String? razorpayPaymentId;
  String? razorpaySignature;

  Payment(
      {this.razorpayOrderId, this.razorpayPaymentId, this.razorpaySignature});

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentToJson(this);
}
