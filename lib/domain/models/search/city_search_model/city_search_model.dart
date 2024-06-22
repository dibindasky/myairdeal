import 'package:json_annotation/json_annotation.dart';

part 'city_search_model.g.dart';

@JsonSerializable()
class CitySearchModel {
  String? code;
  String? name;
  String? citycode;
  String? city;
  String? country;
  String? countrycode;

  CitySearchModel({
    this.code,
    this.name,
    this.citycode,
    this.city,
    this.country,
    this.countrycode,
  });

  factory CitySearchModel.fromJson(Map<String, dynamic> json) {
    return _$CitySearchModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CitySearchModelToJson(this);
}
