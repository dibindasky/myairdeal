import 'package:json_annotation/json_annotation.dart';

part 'ssr_info.g.dart';

@JsonSerializable()
class SsrInfo {
  String? key;
  String? code;
  String? desc;

  SsrInfo({this.key, this.code, this.desc});

  factory SsrInfo.fromJson(Map<String, dynamic> json) =>
      _$SsrInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SsrInfoToJson(this);
}
