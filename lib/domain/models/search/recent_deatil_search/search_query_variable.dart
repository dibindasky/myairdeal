import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/flight_search_query.dart';

part 'search_query_variable.g.dart';

@JsonSerializable()
class SearchQueryVariable {
  FlightSearchQuery? searchQuery;

  SearchQueryVariable(this.searchQuery);

  factory SearchQueryVariable.fromJson(Map<String, dynamic> json) =>
      _$SearchQueryVariableFromJson(json);

  Map<String, dynamic> toJson() => _$SearchQueryVariableToJson(this);
}
