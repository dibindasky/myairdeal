import 'package:json_annotation/json_annotation.dart';

import 'fare_rule_info.dart';

part 'tfr.g.dart';

@JsonSerializable()
class Tfr {
  @JsonKey(name: 'NO_SHOW')
  List<FareRuleInfo>? noShow;
  @JsonKey(name: 'DATECHANGE')
  List<FareRuleInfo>? datechange;
  @JsonKey(name: 'CANCELLATION')
  List<FareRuleInfo>? cancellation;
  @JsonKey(name: 'SEAT_CHARGEABLE')
  List<FareRuleInfo>? seatChargeable;

  Tfr({
    this.noShow,
    this.datechange,
    this.cancellation,
    this.seatChargeable,
  });

  factory Tfr.fromJson(Map<String, dynamic> json) => _$TfrFromJson(json);

  Map<String, dynamic> toJson() => _$TfrToJson(this);

  Tfr copyWith({
    List<FareRuleInfo>? noShow,
    List<FareRuleInfo>? datechange,
    List<FareRuleInfo>? cancellation,
    List<FareRuleInfo>? seatChargeable,
  }) {
    return Tfr(
      noShow: noShow ?? this.noShow,
      datechange: datechange ?? this.datechange,
      cancellation: cancellation ?? this.cancellation,
      seatChargeable: seatChargeable ?? this.seatChargeable,
    );
  }
}
