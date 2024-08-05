import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/search/city_search_model/city_search_model.dart';

part 'from_city_or_airport.g.dart';

@JsonSerializable()
class FromCityOrAirport {
  String? code;
  String? city;
  String? cityCode;
  String? country;
  String? countryCode;
  String? name;

  FromCityOrAirport({
    this.code,
    this.city,
    this.cityCode,
    this.country,
    this.countryCode,
    this.name,
  });

  factory FromCityOrAirport.fromJson(Map<String, dynamic> json) {
    return _$FromCityOrAirportFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FromCityOrAirportToJson(this);

  CitySearchModel convertFromCityOrAirportToCitySearchModel() {
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
