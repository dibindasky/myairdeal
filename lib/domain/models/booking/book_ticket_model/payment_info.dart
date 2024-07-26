import 'package:json_annotation/json_annotation.dart';

part 'payment_info.g.dart';

@JsonSerializable()
class PaymentInfo {
  double? amount;

  PaymentInfo({this.amount});

  factory PaymentInfo.fromJson(Map<String, dynamic> json) {
    return _$PaymentInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentInfoToJson(this);

  PaymentInfo copyWith({
    double? amount,
  }) {
    return PaymentInfo(
      amount: amount ?? this.amount,
    );
  }
}
