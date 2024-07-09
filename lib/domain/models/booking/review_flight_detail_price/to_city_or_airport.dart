import 'package:json_annotation/json_annotation.dart';

part 'to_city_or_airport.g.dart';

@JsonSerializable()
class ToCityOrAirport {
  String? code;
  String? name;
  String? cityCode;
  String? city;
  String? country;
  String? countryCode;

  ToCityOrAirport({
    this.code,
    this.name,
    this.cityCode,
    this.city,
    this.country,
    this.countryCode,
  });

  factory ToCityOrAirport.fromJson(Map<String, dynamic> json) {
    return _$ToCityOrAirportFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ToCityOrAirportToJson(this);

  ToCityOrAirport copyWith({
    String? code,
    String? name,
    String? cityCode,
    String? city,
    String? country,
    String? countryCode,
  }) {
    return ToCityOrAirport(
      code: code ?? this.code,
      name: name ?? this.name,
      cityCode: cityCode ?? this.cityCode,
      city: city ?? this.city,
      country: country ?? this.country,
      countryCode: countryCode ?? this.countryCode,
    );
  }
}
