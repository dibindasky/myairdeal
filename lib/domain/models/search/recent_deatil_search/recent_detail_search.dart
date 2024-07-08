import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/search/recent_deatil_search/recent_detail_search_item.dart';

part 'recent_detail_search.g.dart';

@JsonSerializable()
class RecentDetailSearch {
  List<RecentDetailSearchItem>? data;

  RecentDetailSearch({this.data});

  factory RecentDetailSearch.fromJson(Map<String, dynamic> json) =>
      _$RecentDetailSearchFromJson(json);
  Map<String, dynamic> toJson() => _$RecentDetailSearchToJson(this);
}
