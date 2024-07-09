import 'package:json_annotation/json_annotation.dart';

part 'pc.g.dart';

@JsonSerializable()
class Pc {
  String? code;
  String? name;
  bool? isLcc;

  Pc({this.code, this.name, this.isLcc});

  factory Pc.fromJson(Map<String, dynamic> json) => _$PcFromJson(json);

  Map<String, dynamic> toJson() => _$PcToJson(this);

  Pc copyWith({
    String? code,
    String? name,
    bool? isLcc,
  }) {
    return Pc(
      code: code ?? this.code,
      name: name ?? this.name,
      isLcc: isLcc ?? this.isLcc,
    );
  }
}
