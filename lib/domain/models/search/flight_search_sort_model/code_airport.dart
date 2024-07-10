import 'package:json_annotation/json_annotation.dart';

part 'code_airport.g.dart';

@JsonSerializable()
class CodeAirport {
  String? code;
  String? name;
  String? cityCode;
  String? city;
  String? country;
  String? countryCode;

  CodeAirport(
      {this.code,
      this.city,
      this.cityCode,
      this.country,
      this.countryCode,
      this.name});

  factory CodeAirport.fromJson(Map<String, dynamic> json) {
    return _$CodeAirportFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CodeAirportToJson(this);

  CodeAirport copyWith({
    String? code,
    String? name,
    String? cityCode,
    String? city,
    String? country,
    String? countryCode,
  }) {
    return CodeAirport(
      code: code ?? this.code,
      cityCode: cityCode ?? this.cityCode,
      city: city ?? this.city,
      country: country ?? this.country,
      countryCode: countryCode ?? this.countryCode,
    );
  }
}
