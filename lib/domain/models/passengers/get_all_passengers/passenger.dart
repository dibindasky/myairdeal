import 'package:json_annotation/json_annotation.dart';

part 'passenger.g.dart';

@JsonSerializable()
class Passenger {
  String? ti;
  String? fN;
  String? lN;
  String? pt;
  String? dob;
  @JsonKey(name: '_id')
  String? id;

  Passenger({this.ti, this.fN, this.lN, this.pt, this.dob, this.id});

  factory Passenger.fromJson(Map<String, dynamic> json) {
    return _$PassengerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PassengerToJson(this);
}
