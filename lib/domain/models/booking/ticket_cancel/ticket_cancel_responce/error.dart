import 'package:json_annotation/json_annotation.dart';

part 'error.g.dart';

@JsonSerializable()
class Error {
  String? errCode;
  String? message;
  String? details;

  Error({this.errCode, this.message, this.details});

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);
}
