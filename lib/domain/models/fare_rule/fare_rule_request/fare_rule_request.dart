import 'package:json_annotation/json_annotation.dart';

part 'fare_rule_request.g.dart';

@JsonSerializable()
class FareRuleRequest {
  @JsonKey(name: 'id')
  String? bookingId;
  String? flowType;

  FareRuleRequest({this.bookingId, this.flowType});

  factory FareRuleRequest.fromJson(Map<String, dynamic> json) {
    return _$FareRuleRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FareRuleRequestToJson(this);
}
