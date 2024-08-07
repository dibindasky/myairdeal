import 'package:json_annotation/json_annotation.dart';

part 'enguiry_model.g.dart';

@JsonSerializable()
class EnguiryModel {
  String? email;
  String? phone;
  String? dialCode;
  String? type;
  String? description;

  EnguiryModel({
    this.email,
    this.phone,
    this.dialCode,
    this.type,
    this.description,
  });

  factory EnguiryModel.fromJson(Map<String, dynamic> json) {
    return _$EnguiryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EnguiryModelToJson(this);
}
