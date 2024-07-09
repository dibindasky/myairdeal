import 'package:json_annotation/json_annotation.dart';

part 'fcs.g.dart';

@JsonSerializable()
class Fcs {
  @JsonKey(name: 'ARFT')
  int? arft;
  @JsonKey(name: 'ARF')
  int? arf;

  Fcs({this.arft, this.arf});

  factory Fcs.fromJson(Map<String, dynamic> json) => _$FcsFromJson(json);

  Map<String, dynamic> toJson() => _$FcsToJson(this);

  Fcs copyWith({
    int? arft,
    int? arf,
  }) {
    return Fcs(
      arft: arft ?? this.arft,
      arf: arf ?? this.arf,
    );
  }
}
