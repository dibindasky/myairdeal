import 'package:json_annotation/json_annotation.dart';

part 'no_show.g.dart';

@JsonSerializable()
class NoShow {
  String? policyInfo;
  String? st;
  String? et;

  NoShow({this.policyInfo, this.st, this.et});

  factory NoShow.fromJson(Map<String, dynamic> json) {
    return _$NoShowFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NoShowToJson(this);
}
