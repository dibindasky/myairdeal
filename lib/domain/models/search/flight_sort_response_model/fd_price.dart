import 'package:json_annotation/json_annotation.dart';

import 'pay_type.dart';

part 'fd_price.g.dart';

@JsonSerializable()
class FdPrice {
  @JsonKey(name: 'ADULT')
  PayType? adult;
  @JsonKey(name: 'INFANT')
  PayType? infant;
  @JsonKey(name: 'CHILD')
  PayType? child;

  FdPrice({this.adult, this.child, this.infant});

  factory FdPrice.fromJson(Map<String, dynamic> json) {
    return _$FdPriceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FdPriceToJson(this);

  FdPrice copyWith({
    PayType? adult,
    PayType? infant,
    PayType? child,
  }) {
    return FdPrice(
      adult: adult ?? this.adult,
      infant: infant ?? this.infant,
      child: child ?? this.child,
    );
  }

  static const colAdult = 'ADULT';
  static const colInfant = 'INFANT';
  static const colChild = 'CHILD';
  static const colLocalId = 'local_id';
  static const colPassengerType = 'passenger_type';
  static const colTotalPriceListId = 'total_price_list_id';
}
