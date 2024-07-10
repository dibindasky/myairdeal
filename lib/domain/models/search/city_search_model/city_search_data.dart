import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/search/city_search_model/city_search_model.dart';

part 'city_search_data.g.dart';

@JsonSerializable()
class CitySearchData {
  List<CitySearchModel>? data;

  CitySearchData(this.data);

  factory CitySearchData.fromJson(Map<String, dynamic> json) =>
      _$CitySearchDataFromJson(json);

  Map<String, dynamic> toJson() => _$CitySearchDataToJson(this);
}
