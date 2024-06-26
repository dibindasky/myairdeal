import 'package:json_annotation/json_annotation.dart';

import 'adult.dart';

part 'fd_price.g.dart';

@JsonSerializable()
class FdPrice {
  @JsonKey(name: 'ADULT')
  Adult? adult;

  FdPrice({this.adult});

  factory FdPrice.fromJson(Map<String, dynamic> json) {
    return _$FdPriceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FdPriceToJson(this);

  FdPrice copyWith({
    Adult? adult,
  }) {
    return FdPrice(
      adult: adult ?? this.adult,
    );
  }
}
