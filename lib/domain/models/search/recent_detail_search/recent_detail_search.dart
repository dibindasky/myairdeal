import 'package:json_annotation/json_annotation.dart';

import 'recent_detail_search_item.dart';

part 'recent_detail_search.g.dart';

@JsonSerializable()
class RecentDetailSearch {
  List<RecentDetailSearchItem>? data;

  RecentDetailSearch({this.data});

  factory RecentDetailSearch.fromJson(Map<String, dynamic> json) {
    return _$RecentDetailSearchFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RecentDetailSearchToJson(this);
}
