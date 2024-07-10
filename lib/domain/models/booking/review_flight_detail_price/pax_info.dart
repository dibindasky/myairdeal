import 'package:json_annotation/json_annotation.dart';

part 'pax_info.g.dart';

@JsonSerializable()
class PaxInfo {
  @JsonKey(name: 'ADULT')
  int? adult;
  @JsonKey(name: 'CHILD')
  int? child;
  @JsonKey(name: 'INFANT')
  int? infant;

  PaxInfo({this.adult, this.child, this.infant});

  factory PaxInfo.fromJson(Map<String, dynamic> json) {
    return _$PaxInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaxInfoToJson(this);

  PaxInfo copyWith({
    int? adult,
    int? child,
    int? infant,
  }) {
    return PaxInfo(
      adult: adult ?? this.adult,
      child: child ?? this.child,
      infant: infant ?? this.infant,
    );
  }
}
