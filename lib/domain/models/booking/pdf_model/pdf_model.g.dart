part of 'pdf_model.dart';

PdfModel _$PdfModelFromJson(Map<String, dynamic> json) {
  return PdfModel(
    base64String: json['base64String'] as String?,
  );
}

Map<String, dynamic> _$PdfModelToJson(PdfModel instance) => <String, dynamic>{
      'base64String': instance.base64String,
    };
