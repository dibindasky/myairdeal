import 'package:json_annotation/json_annotation.dart';

part 'traveller.g.dart';

@JsonSerializable()
class Traveller {
  String? fn;
  String? ln;

  Traveller({this.fn, this.ln});

  factory Traveller.fromJson(Map<String, dynamic> json) {
    return _$TravellerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TravellerToJson(this);
}
