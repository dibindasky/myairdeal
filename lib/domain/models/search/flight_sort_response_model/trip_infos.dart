import 'package:json_annotation/json_annotation.dart';

import 'search_airline_information.dart';

part 'trip_infos.g.dart';

@JsonSerializable()
class TripInfos {
  @JsonKey(name: 'ONWARD')
  List<SearchAirlineInformation>? onward;
  @JsonKey(name: 'RETURN')
  List<SearchAirlineInformation>? returns;
  @JsonKey(name: 'COMBO')
  List<SearchAirlineInformation>? combo;
  @JsonKey(name: '0')
  List<SearchAirlineInformation>? multicity1;
  @JsonKey(name: '1')
  List<SearchAirlineInformation>? multicity2;
  @JsonKey(name: '2')
  List<SearchAirlineInformation>? multicity3;
  @JsonKey(name: '3')
  List<SearchAirlineInformation>? multicity4;
  @JsonKey(name: '4')
  List<SearchAirlineInformation>? multicity5;
  @JsonKey(name: '5')
  List<SearchAirlineInformation>? multicity6;

  TripInfos({this.onward});

  factory TripInfos.fromJson(Map<String, dynamic> json) {
    return _$TripInfosFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TripInfosToJson(this);

  TripInfos copyWith({
    List<SearchAirlineInformation>? onward,
  }) {
    return TripInfos(
      onward: onward ?? this.onward,
    );
  }
}
