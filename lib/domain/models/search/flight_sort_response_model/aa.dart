import 'package:json_annotation/json_annotation.dart';

part 'aa.g.dart';

@JsonSerializable()
class Aa {
  String? code;
  String? name;
  String? cityCode;
  String? city;
  String? country;
  String? countryCode;
  String? terminal;

  Aa({
    this.code,
    this.name,
    this.cityCode,
    this.city,
    this.country,
    this.countryCode,
    this.terminal,
  });

  factory Aa.fromJson(Map<String, dynamic> json) => _$AaFromJson(json);

  Map<String, dynamic> toJson() => _$AaToJson(this);

  Aa copyWith({
    String? code,
    String? name,
    String? cityCode,
    String? city,
    String? country,
    String? countryCode,
  }) {
    return Aa(
      code: code ?? this.code,
      name: name ?? this.name,
      cityCode: cityCode ?? this.cityCode,
      city: city ?? this.city,
      country: country ?? this.country,
      countryCode: countryCode ?? this.countryCode,
    );
  }
}
