import 'package:json_annotation/json_annotation.dart';

import 'adult.dart';
import 'child.dart';
import 'infant.dart';

part 'amendment_info.g.dart';

@JsonSerializable()
class AmendmentInfo {
  @JsonKey(name: 'ADULT')
  Adult? adult;
  @JsonKey(name: 'CHILD')
  Child? child;
  @JsonKey(name: 'INFANT')
  Infant? infant;

  AmendmentInfo({this.adult, this.child, this.infant});

  factory AmendmentInfo.fromJson(Map<String, dynamic> json) {
    return _$AmendmentInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AmendmentInfoToJson(this);
}
