import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/search/city_search_model/city_search_model.dart';

part 'to_city_or_airport.g.dart';

@JsonSerializable()
class ToCityOrAirport {
  String? code;
  String? city;
  String? cityCode;
  String? country;
  String? countryCode;
  String? name;

  ToCityOrAirport({
    this.code,
    this.city,
    this.cityCode,
    this.country,
    this.countryCode,
    this.name,
  });

  factory ToCityOrAirport.fromJson(Map<String, dynamic> json) {
    return _$ToCityOrAirportFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ToCityOrAirportToJson(this);

  CitySearchModel convertToCityOrAirportToCitySearchModel() {
    return CitySearchModel(
      code: code,
      name: name,
      citycode: cityCode,
      city: city,
      country: country,
      countrycode: countryCode,
    );
  }
}
