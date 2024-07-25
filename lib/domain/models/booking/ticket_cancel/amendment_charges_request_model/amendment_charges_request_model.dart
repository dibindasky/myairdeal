import 'package:json_annotation/json_annotation.dart';

part 'amendment_charges_request_model.g.dart';

@JsonSerializable()
class AmendmentChargesRequestModel {
  String? bookingId;
  String? type;

  AmendmentChargesRequestModel({this.bookingId, this.type});

  factory AmendmentChargesRequestModel.fromJson(Map<String, dynamic> json) {
    return _$AmendmentChargesRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AmendmentChargesRequestModelToJson(this);
}
