import 'package:json_annotation/json_annotation.dart';

import 'trip_infos.dart';

part 'search_result.g.dart';

@JsonSerializable()
class SearchResult {
  TripInfos? tripInfos;

  SearchResult({this.tripInfos});

  factory SearchResult.fromJson(Map<String, dynamic> json) {
    return _$SearchResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultToJson(this);

  SearchResult copyWith({
    TripInfos? tripInfos,
  }) {
    return SearchResult(
      tripInfos: tripInfos ?? this.tripInfos,
    );
  }
}
