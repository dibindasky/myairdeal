import 'package:json_annotation/json_annotation.dart';

part 'amendment.g.dart';

@JsonSerializable()
class Amendment {
  String? id;
  @JsonKey(name: '_id')
  String? createdId;
  DateTime? time;

  Amendment({this.id, this.createdId, this.time});

  factory Amendment.fromJson(Map<String, dynamic> json) {
    return _$AmendmentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AmendmentToJson(this);
}
