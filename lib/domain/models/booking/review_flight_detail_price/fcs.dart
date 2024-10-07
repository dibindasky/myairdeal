import 'package:json_annotation/json_annotation.dart';

part 'fcs.g.dart';

@JsonSerializable()
class Fcs {
  @JsonKey(name: 'ARFT')
  num? arft;
  @JsonKey(name: 'ARF')
  num? arf;

  Fcs({this.arft, this.arf});

  factory Fcs.fromJson(Map<String, dynamic> json) => _$FcsFromJson(json);

  Map<String, dynamic> toJson() => _$FcsToJson(this);

  Fcs copyWith({
    num? arft,
    num? arf,
  }) {
    return Fcs(
      arft: arft ?? this.arft,
      arf: arf ?? this.arf,
    );
  }
}
