import 'package:json_annotation/json_annotation.dart';

import 'search_result.dart';
import 'status.dart';
import 'error.dart';

part 'flight_sort_response_model.g.dart';

@JsonSerializable()
class FlightSortResponseModel {
  SearchResult? searchResult;
  Status? status;
  List<Error>? errors;

  FlightSortResponseModel({
    this.searchResult,
    this.status,
    this.errors,
  });

  factory FlightSortResponseModel.fromJson(Map<String, dynamic> json) {
    return _$FlightSortResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FlightSortResponseModelToJson(this);

  FlightSortResponseModel copyWith({
    SearchResult? searchResult,
    Status? status,
    List<Error>? errors,
  }) {
    return FlightSortResponseModel(
      searchResult: searchResult ?? this.searchResult,
      status: status ?? this.status,
      errors: errors ?? this.errors,
    );
  }
}
