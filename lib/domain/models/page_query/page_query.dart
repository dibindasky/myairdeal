import 'package:json_annotation/json_annotation.dart';

part 'page_query.g.dart';

@JsonSerializable()
class PageQuery {
  int? pageSize;
  String? search;

  PageQuery({this.pageSize, this.search});

  factory PageQuery.fromJson(Map<String, dynamic> json) {
    return _$PageQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PageQueryToJson(this);
}
