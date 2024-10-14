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

  TripInfos({
    this.onward,
    this.returns,
    this.combo,
    this.multicity1,
    this.multicity2,
    this.multicity3,
    this.multicity4,
    this.multicity5,
    this.multicity6,
  });

  factory TripInfos.fromJson(Map<String, dynamic> json) {
    return _$TripInfosFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TripInfosToJson(this);

  TripInfos copyWith({
    List<SearchAirlineInformation>? onward,
    List<SearchAirlineInformation>? returns,
    List<SearchAirlineInformation>? combo,
    List<SearchAirlineInformation>? multicity1,
    List<SearchAirlineInformation>? multicity2,
    List<SearchAirlineInformation>? multicity3,
    List<SearchAirlineInformation>? multicity4,
    List<SearchAirlineInformation>? multicity5,
    List<SearchAirlineInformation>? multicity6,
  }) {
    return TripInfos(
      onward: onward ?? this.onward,
      returns: returns ?? this.returns,
      combo: combo ?? this.combo,
      multicity1: multicity1 ?? this.multicity1,
      multicity2: multicity2 ?? this.multicity2,
      multicity3: multicity3 ?? this.multicity3,
      multicity4: multicity4 ?? this.multicity4,
      multicity5: multicity5 ?? this.multicity5,
      multicity6: multicity6 ?? this.multicity6,
    );
  }

  static const colLocalId = 'local_id';
  static const colOnward = 'ONWARD';
  static const colReturns = 'RETURN';
  static const colCombo = 'COMBO';
  static const colMulticity1 = 'multi_city_0';
  static const colMulticity2 = 'multi_city_1';
  static const colMulticity3 = 'multi_city_2';
  static const colMulticity4 = 'multi_city_3';
  static const colMulticity5 = 'multi_city_4';
  static const colMulticity6 = 'multi_city_5';
}
