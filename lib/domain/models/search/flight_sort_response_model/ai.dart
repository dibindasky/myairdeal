import 'package:json_annotation/json_annotation.dart';

part 'ai.g.dart';

@JsonSerializable()
class AI {
  String? code;
  String? name;
  bool? isLcc;

  AI({this.code, this.name, this.isLcc});

  factory AI.fromJson(Map<String, dynamic> json) => _$AIFromJson(json);

  Map<String, dynamic> toJson() => _$AIToJson(this);

  AI copyWith({
    String? code,
    String? name,
    bool? isLcc,
  }) {
    return AI(
      code: code ?? this.code,
      name: name ?? this.name,
      isLcc: isLcc ?? this.isLcc,
    );
  }

  static const colCode = 'code';
  static const colName = 'name';
  static const colisLcc = 'isLcc';
}
