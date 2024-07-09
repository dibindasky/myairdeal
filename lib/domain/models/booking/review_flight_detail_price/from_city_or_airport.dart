import 'package:json_annotation/json_annotation.dart';

part 'from_city_or_airport.g.dart';

@JsonSerializable()
class FromCityOrAirport {
  String? code;
  String? name;
  String? cityCode;
  String? city;
  String? country;
  String? countryCode;

  FromCityOrAirport({
    this.code,
    this.name,
    this.cityCode,
    this.city,
    this.country,
    this.countryCode,
  });

  factory FromCityOrAirport.fromJson(Map<String, dynamic> json) {
    return _$FromCityOrAirportFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FromCityOrAirportToJson(this);

  FromCityOrAirport copyWith({
    String? code,
    String? name,
    String? cityCode,
    String? city,
    String? country,
    String? countryCode,
  }) {
    return FromCityOrAirport(
      code: code ?? this.code,
      name: name ?? this.name,
      cityCode: cityCode ?? this.cityCode,
      city: city ?? this.city,
      country: country ?? this.country,
      countryCode: countryCode ?? this.countryCode,
    );
  }
}
