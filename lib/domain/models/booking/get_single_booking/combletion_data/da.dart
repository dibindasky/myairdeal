import 'package:json_annotation/json_annotation.dart';

part 'da.g.dart';

@JsonSerializable()
class Da {
  String? code;
  String? name;
  String? cityCode;
  String? city;
  String? country;
  String? countryCode;

  Da({
    this.code,
    this.name,
    this.cityCode,
    this.city,
    this.country,
    this.countryCode,
  });

  factory Da.fromJson(Map<String, dynamic> json) => _$DaFromJson(json);

  Map<String, dynamic> toJson() => _$DaToJson(this);
}
