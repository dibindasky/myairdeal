import 'package:json_annotation/json_annotation.dart';

part 'to_city_or_airport.g.dart';

@JsonSerializable()
class ToCityOrAirport {
  String? code;

  ToCityOrAirport({this.code});

  factory ToCityOrAirport.fromJson(Map<String, dynamic> json) {
    return _$ToCityOrAirportFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ToCityOrAirportToJson(this);

  ToCityOrAirport copyWith({
    String? code,
  }) {
    return ToCityOrAirport(
      code: code ?? this.code,
    );
  }
}
