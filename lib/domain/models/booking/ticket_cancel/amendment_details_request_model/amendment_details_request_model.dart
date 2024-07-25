import 'package:json_annotation/json_annotation.dart';

part 'amendment_details_request_model.g.dart';

@JsonSerializable()
class AmendmentDetailsRequestModel {
  String? amendmentId;

  AmendmentDetailsRequestModel({this.amendmentId});

  factory AmendmentDetailsRequestModel.fromJson(Map<String, dynamic> json) {
    return _$AmendmentDetailsRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AmendmentDetailsRequestModelToJson(this);
}
