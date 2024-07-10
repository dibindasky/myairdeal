import 'package:json_annotation/json_annotation.dart';

part 'payment_info.g.dart';

@JsonSerializable()
class PaymentInfo {
  int? amount;

  PaymentInfo({this.amount});

  factory PaymentInfo.fromJson(Map<String, dynamic> json) {
    return _$PaymentInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentInfoToJson(this);

  PaymentInfo copyWith({
    int? amount,
  }) {
    return PaymentInfo(
      amount: amount ?? this.amount,
    );
  }
}
