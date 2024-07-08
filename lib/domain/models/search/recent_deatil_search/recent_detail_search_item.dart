import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/search/recent_deatil_search/search_query_variable.dart';

part 'recent_detail_search_item.g.dart';

@JsonSerializable()
class RecentDetailSearchItem {
  String? type;
  SearchQueryVariable? searchQuery;
  RecentDetailSearchItem({this.type, this.searchQuery});

  factory RecentDetailSearchItem.fromJson(Map<String, dynamic> json) =>
      _$RecentDetailSearchItemFromJson(json);
  Map<String, dynamic> toJson() => _$RecentDetailSearchItemToJson(this);
}
