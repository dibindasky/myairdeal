import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/booking/mark_up/markup_model.dart';

part 'payment.g.dart';

@JsonSerializable()
class Payment {
  @JsonKey(name: 'razorpay_order_id')
  String? razorpayOrderId;
  @JsonKey(name: 'razorpay_payment_id')
  String? razorpayPaymentId;
  @JsonKey(name: 'razorpay_signature')
  String? razorpaySignature;
  @JsonKey(name: 'markUp')
  MarkupModel? markUp;
  double? baseFare;
  double? totalFare;

  Payment(
      {this.razorpayOrderId,
      this.razorpayPaymentId,
      this.razorpaySignature,
      this.markUp,
      this.baseFare,
      this.totalFare});

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentToJson(this);

  Payment copyWith({
    String? razorpayOrderId,
    String? razorpayPaymentId,
    String? razorpaySignature,
    MarkupModel? markUp,
    double? baseFare,
    double? totalFare,
  }) {
    return Payment(
      razorpayOrderId: razorpayOrderId ?? this.razorpayOrderId,
      razorpayPaymentId: razorpayPaymentId ?? this.razorpayPaymentId,
      razorpaySignature: razorpaySignature ?? this.razorpaySignature,
      markUp: markUp ?? this.markUp,
      baseFare: baseFare ?? this.baseFare,
      totalFare: totalFare ?? this.totalFare,
    );
  }
}
