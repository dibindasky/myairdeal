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
}
