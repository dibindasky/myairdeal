import 'package:json_annotation/json_annotation.dart';

part 'code_airport.g.dart';

@JsonSerializable()
class CodeAirport {
  String? code;

  CodeAirport({this.code});

  factory CodeAirport.fromJson(Map<String, dynamic> json) {
    return _$CodeAirportFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CodeAirportToJson(this);

  CodeAirport copyWith({
    String? code,
  }) {
    return CodeAirport(
      code: code ?? this.code,
    );
  }
}
