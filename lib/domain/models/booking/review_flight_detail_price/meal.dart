import 'package:json_annotation/json_annotation.dart';

part 'meal.g.dart';

@JsonSerializable()
class Meal {
  String? code;
  String? desc;
  int? amount;

  Meal({this.code, this.desc, this.amount});

  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);

  Map<String, dynamic> toJson() => _$MealToJson(this);

  Meal copyWith({
    String? code,
    String? desc,
    int? amount,
  }) {
    return Meal(
      code: code ?? this.code,
      desc: desc ?? this.desc,
      amount: amount ?? this.amount,
    );
  }
}
