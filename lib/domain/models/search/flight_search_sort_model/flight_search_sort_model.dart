import 'package:json_annotation/json_annotation.dart';

import 'flight_search_query.dart';

part 'flight_search_sort_model.g.dart';

@JsonSerializable()
class FlightSearchSortModel {
  FlightSearchQuery? searchQuery;

  FlightSearchSortModel({this.searchQuery});

  factory FlightSearchSortModel.fromJson(Map<String, dynamic> json) {
    return _$FlightSearchSortModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FlightSearchSortModelToJson(this);

  FlightSearchSortModel copyWith({
    FlightSearchQuery? searchQuery,
  }) {
    return FlightSearchSortModel(
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }
}
