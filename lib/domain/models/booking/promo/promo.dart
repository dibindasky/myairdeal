import 'package:json_annotation/json_annotation.dart';

part 'promo.g.dart';

@JsonSerializable()
class PromoResponse{
  final int? value;
  final String? message;

  PromoResponse({this.message,this.value});
  factory PromoResponse.fromJson(Map<String, dynamic> json) => _$PromoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PromoResponseToJson(this);

}