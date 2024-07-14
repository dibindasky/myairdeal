import 'package:json_annotation/json_annotation.dart';

part 'pdf_model.g.dart';

@JsonSerializable()
class PdfModel {
  String? base64String;

  PdfModel({this.base64String});

  factory PdfModel.fromJson(Map<String, dynamic> json) =>
      _$PdfModelFromJson(json);

  Map<String, dynamic> toJson() => _$PdfModelToJson(this);
}
