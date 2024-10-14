// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map<String, dynamic> json) => Payment(
      razorpayOrderId: json['razorpay_order_id'] as String?,
      razorpayPaymentId: json['razorpay_payment_id'] as String?,
      razorpaySignature: json['razorpay_signature'] as String?,
      markUp: json['markUp'] == null
          ? null
          : MarkupModel.fromJson(json['markUp'] as Map<String, dynamic>),
      baseFare: (json['baseFare'] as num?)?.toDouble(),
      totalFare: (json['totalFare'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'razorpay_order_id': instance.razorpayOrderId,
      'razorpay_payment_id': instance.razorpayPaymentId,
      'razorpay_signature': instance.razorpaySignature,
      'markUp': instance.markUp,
      'baseFare': instance.baseFare,
      'totalFare': instance.totalFare,
    };
