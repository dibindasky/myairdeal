import 'package:json_annotation/json_annotation.dart';

import 'meal.dart';

part 'ssr_info.g.dart';

@JsonSerializable()
class SsrInfo {
  @JsonKey(name: 'MEAL')
  List<Meal>? meal;

  SsrInfo({this.meal});

  factory SsrInfo.fromJson(Map<String, dynamic> json) {
    return _$SsrInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SsrInfoToJson(this);

  SsrInfo copyWith({
    List<Meal>? meal,
  }) {
    return SsrInfo(
      meal: meal ?? this.meal,
    );
  }
}
