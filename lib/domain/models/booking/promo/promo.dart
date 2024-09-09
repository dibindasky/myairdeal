import 'package:json_annotation/json_annotation.dart';

part 'promo.g.dart';

@JsonSerializable()
class Promo {
  @JsonKey(name: '_id')
  final String? id;
  final String? code;
  final int? value;
  final bool? advertise;
  final List<String>? userIds;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? v;

  Promo({
    this.id,
    this.code,
    this.value,
    this.advertise,
    this.userIds,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Promo.fromJson(Map<String, dynamic> json) => _$PromoFromJson(json);
  Map<String, dynamic> toJson() => _$PromoToJson(this);
}
