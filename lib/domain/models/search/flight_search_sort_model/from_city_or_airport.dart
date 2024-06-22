import 'package:json_annotation/json_annotation.dart';

part 'from_city_or_airport.g.dart';

@JsonSerializable()
class FromCityOrAirport {
  String? code;

  FromCityOrAirport({this.code});

  factory FromCityOrAirport.fromJson(Map<String, dynamic> json) {
    return _$FromCityOrAirportFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FromCityOrAirportToJson(this);

  FromCityOrAirport copyWith({
    String? code,
  }) {
    return FromCityOrAirport(
      code: code ?? this.code,
    );
  }
}
