import 'package:json_annotation/json_annotation.dart';

part 'ai.g.dart';

@JsonSerializable()
class Ai {
  String? code;
  String? name;
  bool? isLcc;

  Ai({this.code, this.name, this.isLcc});

  factory Ai.fromJson(Map<String, dynamic> json) => _$AiFromJson(json);

  Map<String, dynamic> toJson() => _$AiToJson(this);

  Ai copyWith({
    String? code,
    String? name,
    bool? isLcc,
  }) {
    return Ai(
      code: code ?? this.code,
      name: name ?? this.name,
      isLcc: isLcc ?? this.isLcc,
    );
  }
}
