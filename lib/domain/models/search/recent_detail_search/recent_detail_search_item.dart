import 'package:json_annotation/json_annotation.dart';

import 'search_query.dart';

part 'recent_detail_search_item.g.dart';

@JsonSerializable()
class RecentDetailSearchItem {
  SearchQuery? searchQuery;
  @JsonKey(name: '_id')
  String? id;

  RecentDetailSearchItem({this.searchQuery, this.id});

  factory RecentDetailSearchItem.fromJson(Map<String, dynamic> json) =>
      _$RecentDetailSearchItemFromJson(json);

  Map<String, dynamic> toJson() => _$RecentDetailSearchItemToJson(this);
}
