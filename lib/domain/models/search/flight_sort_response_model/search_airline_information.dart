import 'package:json_annotation/json_annotation.dart';

import 'si.dart';
import 'total_price_list.dart';

part 'search_airline_information.g.dart';

@JsonSerializable()
class SearchAirlineInformation {
  List<SI>? sI;
  List<TotalPriceList>? totalPriceList;

  SearchAirlineInformation({this.sI, this.totalPriceList});

  factory SearchAirlineInformation.fromJson(Map<String, dynamic> json) {
    return _$SearchAirlineInformationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchAirlineInformationToJson(this);

  SearchAirlineInformation copyWith({
    List<SI>? sI,
    List<TotalPriceList>? totalPriceList,
  }) {
    return SearchAirlineInformation(
      sI: sI ?? this.sI,
      totalPriceList: totalPriceList ?? this.totalPriceList,
    );
  }
}
