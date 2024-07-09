import 'package:json_annotation/json_annotation.dart';

part 'meal.g.dart';

@JsonSerializable()
class Meal {
  String? code;
  String? desc;

  Meal({this.code, this.desc});

  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);

  Map<String, dynamic> toJson() => _$MealToJson(this);

  Meal copyWith({
    String? code,
    String? desc,
  }) {
    return Meal(
      code: code ?? this.code,
      desc: desc ?? this.desc,
    );
  }
}
