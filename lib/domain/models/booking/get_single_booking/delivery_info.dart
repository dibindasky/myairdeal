import 'package:json_annotation/json_annotation.dart';

part 'delivery_info.g.dart';

@JsonSerializable()
class DeliveryInfo {
  List<String>? emails;
  List<String>? contacts;

  DeliveryInfo({this.emails, this.contacts});

  factory DeliveryInfo.fromJson(Map<String, dynamic> json) {
    return _$DeliveryInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeliveryInfoToJson(this);
}
