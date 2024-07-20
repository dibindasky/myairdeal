import 'package:json_annotation/json_annotation.dart';

part 'ssr_info.g.dart';

@JsonSerializable()
class SsrInfo {
  String? key;
  String? code;
  String? desc;
  int? amount;

  SsrInfo({this.key, this.code, this.desc, this.amount});

  factory SsrInfo.fromJson(Map<String, dynamic> json) =>
      _$SsrInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SsrInfoToJson(this);

  SsrInfo copyWith({
    String? key,
    String? code,
    String? desc,
    int? amount,
  }) {
    return SsrInfo(
      key: key ?? this.key,
      code: code ?? this.code,
      desc: desc ?? this.desc,
      amount: amount ?? this.amount,
    );
  }
}
