import 'package:json_annotation/json_annotation.dart';

part 'splash_model.g.dart';

@JsonSerializable()
class SplashModel {
  String? base64String;

  SplashModel({this.base64String});

  factory SplashModel.fromJson(Map<String, dynamic> json) {
    return _$SplashModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SplashModelToJson(this);
}
