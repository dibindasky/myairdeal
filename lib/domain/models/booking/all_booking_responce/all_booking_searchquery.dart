import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/pax_info.dart';
import 'route_info.dart';
import 'search_modifiers.dart';

part 'all_booking_searchquery.g.dart';

@JsonSerializable()
class AllBookingSearchquery {
  List<RouteInfo>? routeInfos;
  String? cabinClass;
  PaxInfo? paxInfo;
  String? requestId;
  String? searchType;
  SearchModifiers? searchModifiers;
  bool? isDomestic;

  AllBookingSearchquery({
    this.routeInfos,
    this.cabinClass,
    this.paxInfo,
    this.requestId,
    this.searchType,
    this.searchModifiers,
    this.isDomestic,
  });

  factory AllBookingSearchquery.fromJson(Map<String, dynamic> json) {
    return _$AllBookingSearchqueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllBookingSearchqueryToJson(this);
}
