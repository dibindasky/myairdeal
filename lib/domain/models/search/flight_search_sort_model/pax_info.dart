import 'package:json_annotation/json_annotation.dart';

part 'pax_info.g.dart';

@JsonSerializable()
class PaxInfo {
  @JsonKey(name: 'ADULT')
  String? adult;
  @JsonKey(name: 'CHILD')
  String? child;
  @JsonKey(name: 'INFANT')
  String? infant;

  PaxInfo({this.adult, this.child, this.infant});

  factory PaxInfo.fromJson(Map<String, dynamic> json) {
    return _$PaxInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaxInfoToJson(this);

  PaxInfo copyWith({
    String? adult,
    String? child,
    String? infant,
  }) {
    return PaxInfo(
      adult: adult ?? this.adult,
      child: child ?? this.child,
      infant: infant ?? this.infant,
    );
  }
}
