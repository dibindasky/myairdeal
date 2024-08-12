// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map<String, dynamic> json) => Payment(
      razorpayOrderId: json['razorpay_order_id'] as String?,
      razorpayPaymentId: json['razorpay_payment_id'] as String?,
      razorpaySignature: json['razorpay_signature'] as String?,
      markUp: json['markUp'],
      totalFare: json['totalFare'],
      baseFare: json['baseFare'],
    );

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'razorpay_order_id': instance.razorpayOrderId,
      'razorpay_payment_id': instance.razorpayPaymentId,
      'razorpay_signature': instance.razorpaySignature,
      'markUp': instance.markUp,
      'totalFare': instance.totalFare,
      'baseFare': instance.baseFare,
    };
