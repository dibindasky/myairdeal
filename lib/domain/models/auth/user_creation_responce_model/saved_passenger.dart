import 'package:json_annotation/json_annotation.dart';

part 'saved_passenger.g.dart';

@JsonSerializable()
class SavedPassenger {
  String? ti;
  String? fN;
  String? lN;
  String? pt;
  String? dob;
  @JsonKey(name: '_id')
  String? id;

  SavedPassenger({this.ti, this.fN, this.lN, this.pt, this.dob, this.id});

  factory SavedPassenger.fromJson(Map<String, dynamic> json) {
    return _$SavedPassengerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SavedPassengerToJson(this);
}
